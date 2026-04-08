import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sep490_mo/core/config/api_config.dart';
import 'package:sep490_mo/core/constants/api_constants.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/core/models/token_refresh_response.dart';
import 'package:sep490_mo/core/services/token_service.dart';

class AuthInterceptor extends Interceptor {
  final Dio _dio;
  final TokenService _tokenService;

  AuthInterceptor({required Dio dio, required TokenService tokenService})
    : _dio = dio,
      _tokenService = tokenService;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Get token from secure storage
    final token = await _tokenService.getAccessToken();

    // Add Authorization header if token exists and header not already set
    if (token != null &&
        !options.headers.containsKey(ApiConstants.headerAuthorization)) {
      options.headers[ApiConstants.headerAuthorization] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // Handle 401 Unauthorized errors
    if (err.response?.statusCode == 401) {
      final refreshToken = await _tokenService.getRefreshToken();

      // If no refresh token, propagate error
      if (refreshToken == null) {
        return handler.next(err);
      }

      if (kDebugMode) {
        print('🔄 401 Detected. Attempting token refresh...');
      }

      try {
        // Perform refresh using a NEW Dio instance to avoid infinite loops
        final tokenDio = Dio();
        tokenDio.options.baseUrl = ApiConfig.projectUrl;

        final response = await tokenDio.post(
          '/auth/refresh-token',
          queryParameters: {'refresh-token': refreshToken},
          options: Options(headers: ApiConfig.defaultHeaders),
        );

        if (response.statusCode == 200) {
          // Parse response with ApiResponse wrapper
          final apiResponse = ApiResponse<TokenRefreshResponse>.fromJson(
            response.data,
            (json) =>
                TokenRefreshResponse.fromJson(json as Map<String, dynamic>),
          );

          final tokenResponse = switch (apiResponse) {
            ApiResponseSuccess(:final data) => data,
            ApiResponseFailure(:final message, :final error) =>
              throw ServerException(message, error),
          };

          await _tokenService.saveTokens(
            accessToken: tokenResponse.token,
            refreshToken: tokenResponse.refreshToken,
          );

          if (kDebugMode) {
            print('✅ Token refreshed. Retrying original request...');
          }

          // Retry the original request with the new token
          final opts = err.requestOptions;
          opts.headers[ApiConstants.headerAuthorization] =
              'Bearer ${tokenResponse.token}';

          final clonedRequest = await _dio.fetch(opts);
          return handler.resolve(clonedRequest);
        }
      } catch (e) {
        if (kDebugMode) {
          print('❌ Token refresh failed: $e');
        }
        // If refresh fails, clear tokens (logout)
        await _tokenService.clearTokens();
      }
    }

    return handler.next(err);
  }
}
