import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sep490_mo/core/config/api_config.dart';
import 'package:sep490_mo/core/constants/api_constants.dart';
import 'package:sep490_mo/core/models/token_refresh_response.dart';
import 'package:sep490_mo/core/services/token_service.dart';


class AuthInterceptor extends Interceptor {
  final Dio _dio;
  final TokenService _tokenService;

  AuthInterceptor({
    required Dio dio,
    required TokenService tokenService,
  }) : _dio = dio,
       _tokenService = tokenService;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Get token from secure storage
    final token = await _tokenService.getAccessToken();

    // Add Authorization header if token exists and header not already set
    if (token != null && !options.headers.containsKey(ApiConstants.headerAuthorization)) {
      options.headers[ApiConstants.headerAuthorization] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    // Handle 401 Unauthorized errors
    if (err.response?.statusCode == 401) {
      final refreshToken = await _tokenService.getRefreshToken();
      
      // If no refresh token or already retrying, propagate error
      if (refreshToken == null) {
        return handler.next(err);
      }

      if (kDebugMode) {
        print('🔄 401 Detected. Attempting token refresh...');
      }

      try {
        // Perform refresh using a NEW Dio instance to avoid infinite loops
        // or interceptor conflicts.
        final tokenDio = Dio(); 
        tokenDio.options.baseUrl = ApiConfig.projectUrl;
        
        final response = await tokenDio.post(
          '/token?grant_type=refresh_token',
          data: {
            'refresh_token': refreshToken,
          },
          options: Options(
            headers: ApiConfig.defaultHeaders,
          ),
        );

        if (response.statusCode == 200) {
          // Parse response
          final tokenResponse = TokenRefreshResponse.fromJson(response.data);

          // Save new tokens
          await _tokenService.saveTokens(
            accessToken: tokenResponse.accessToken,
            refreshToken: tokenResponse.refreshToken ?? refreshToken,
          );

          if (kDebugMode) {
            print('✅ Token refreshed. Retrying original request...');
          }

          // Retry the original request with the new token
          final opts = err.requestOptions;
          opts.headers[ApiConstants.headerAuthorization] = 'Bearer ${tokenResponse.accessToken}';

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

// class AuthInterceptor extends Interceptor {                                                                         │
// │    final Dio _dio;                                                                                                   │
// │    final TokenService _tokenService;                                                                                 │
// │                                                                                                                      │
// │    // Prevent duplicate refresh attempts                                                                             │
// │    bool _isRefreshing = false;                                                                                       │
// │    final List<Completer<void>> _refreshCompleters = [];                                                              │
// │                                                                                                                      │
// │    AuthInterceptor({                                                                                                 │
// │      required Dio dio,                                                                                               │
// │      required TokenService tokenService,                                                                             │
// │    })  : _dio = dio,                                                                                                 │
// │          _tokenService = tokenService;                                                                               │
// │                                                                                                                      │
// │    @override                                                                                                         │
// │    Future<void> onRequest(                                                                                           │
// │      RequestOptions options,                                                                                         │
// │      RequestInterceptorHandler handler,                                                                              │
// │    ) async {                                                                                                         │
// │      final token = await _tokenService.getAccessToken();                                                             │
// │                                                                                                                      │
// │      if (token != null && !options.headers.containsKey('Authorization')) {                                           │
// │        options.headers['Authorization'] = 'Bearer $token';                                                           │
// │      }                                                                                                               │
// │                                                                                                                      │
// │      handler.next(options);                                                                                          │
// │    }                                                                                                                 │
// │                                                                                                                      │
// │    @override                                                                                                         │
// │    Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {                                   │
// │      if (err.response?.statusCode == 401) {                                                                          │
// │        final refreshToken = await _tokenService.getRefreshToken();                                                   │
// │                                                                                                                      │
// │        if (refreshToken == null) {                                                                                   │
// │          await _tokenService.clearTokens();                                                                          │
// │          return handler.next(err);                                                                                   │
// │        }                                                                                                             │
// │                                                                                                                      │
// │        // If already refreshing, wait for completion                                                                 │
// │        if (_isRefreshing) {                                                                                          │
// │          return _waitForRefreshAndRetry(err, handler);                                                               │
// │        }                                                                                                             │
// │                                                                                                                      │
// │        // Start refresh                                                                                              │
// │        return _refreshTokenAndRetry(err, handler, refreshToken);                                                     │
// │      }                                                                                                               │
// │                                                                                                                      │
// │      return handler.next(err);                                                                                       │
// │    }                                                                                                                 │
// │                                                                                                                      │
// │    Future<void> _waitForRefreshAndRetry(                                                                             │
// │      DioException err,                                                                                               │
// │      ErrorInterceptorHandler handler,                                                                                │
// │    ) async {                                                                                                         │
// │      final completer = Completer<void>();                                                                            │
// │      _refreshCompleters.add(completer);                                                                              │
// │                                                                                                                      │
// │      try {                                                                                                           │
// │        await completer.future;                                                                                       │
// │                                                                                                                      │
// │        // Retry with new token                                                                                       │
// │        final newToken = await _tokenService.getAccessToken();                                                        │
// │        if (newToken != null) {                                                                                       │
// │          err.requestOptions.headers['Authorization'] = 'Bearer $newToken';                                           │
// │          final response = await _dio.fetch(err.requestOptions);                                                      │
// │          return handler.resolve(response);                                                                           │
// │        }                                                                                                             │
// │      } catch (e) {                                                                                                   │
// │        // Refresh failed                                                                                             │
// │      }                                                                                                               │
// │                                                                                                                      │
// │      return handler.next(err);                                                                                       │
// │    }                                                                                                                 │
// │                                                                                                                      │
// │    Future<void> _refreshTokenAndRetry(                                                                               │
// │      DioException err,                                                                                               │
// │      ErrorInterceptorHandler handler,                                                                                │
// │      String refreshToken,                                                                                            │
// │    ) async {                                                                                                         │
// │      _isRefreshing = true;                                                                                           │
// │                                                                                                                      │
// │      try {                                                                                                           │
// │        if (kDebugMode) {                                                                                             │
// │          print('🔄 Token expired. Refreshing...');                                                                   │
// │        }                                                                                                             │
// │                                                                                                                      │
// │        // Use separate Dio to avoid interceptor loop                                                                 │
// │        final tokenDio = Dio();                                                                                       │
// │        tokenDio.options.baseUrl = ApiConfig.authBaseUrl;                                                             │
// │                                                                                                                      │
// │        final response = await tokenDio.post(                                                                         │
// │          '/token?grant_type=refresh_token',                                                                          │
// │          data: {'refresh_token': refreshToken},                                                                      │
// │          options: Options(headers: ApiConfig.defaultHeaders),                                                        │
// │        );                                                                                                            │
// │                                                                                                                      │
// │        if (response.statusCode == 200) {                                                                             │
// │          final tokenResponse = TokenRefreshResponse.fromJson(response.data);                                         │
// │                                                                                                                      │
// │          // Save new tokens                                                                                          │
// │          await _tokenService.saveTokens(                                                                             │
// │            accessToken: tokenResponse.accessToken,                                                                   │
// │            refreshToken: tokenResponse.refreshToken ?? refreshToken,                                                 │
// │          );                                                                                                          │
// │                                                                                                                      │
// │          if (kDebugMode) {                                                                                           │
// │            print('✅ Token refreshed successfully');                                                                 │
// │          }                                                                                                           │
// │                                                                                                                      │
// │          // Complete waiting requests                                                                                │
// │          for (final completer in _refreshCompleters) {                                                               │
// │            completer.complete();                                                                                     │
// │          }                                                                                                           │
// │          _refreshCompleters.clear();                                                                                 │
// │                                                                                                                      │
// │          // Retry original request                                                                                   │
// │          err.requestOptions.headers['Authorization'] =                                                               │
// │              'Bearer ${tokenResponse.accessToken}';                                                                  │
// │                                                                                                                      │
// │          final retryResponse = await _dio.fetch(err.requestOptions);                                                 │
// │          return handler.resolve(retryResponse);                                                                      │
// │        }                                                                                                             │
// │      } catch (e) {                                                                                                   │
// │        if (kDebugMode) {                                                                                             │
// │          print('❌ Token refresh failed: $e');                                                                       │
// │        }                                                                                                             │
// │                                                                                                                      │
// │        await _tokenService.clearTokens();                                                                            │
// │                                                                                                                      │
// │        // Complete waiting requests with error                                                                       │
// │        for (final completer in _refreshCompleters) {                                                                 │
// │          completer.completeError(e);                                                                                 │
// │        }                                                                                                             │
// │        _refreshCompleters.clear();                                                                                   │
// │                                                                                                                      │
// │        // Return session expired error                                                                               │
// │        return handler.reject(                                                                                        │
// │          DioException(                                                                                               │
// │            requestOptions: err.requestOptions,                                                                       │
// │            error: UnauthorizedException('Session expired. Please sign in again.'),                                                          │
// │            type: DioExceptionType.badResponse,                                                                       │
// │            response: err.response,                                                                                   │
// │          ),                                                                                                          │
// │        );                                                                                                            │
// │      } finally {                                                                                                     │
// │        _isRefreshing = false;                                                                                        │
// │      }                                                                                                               │
// │    }                                                                                                                 │
// │  }