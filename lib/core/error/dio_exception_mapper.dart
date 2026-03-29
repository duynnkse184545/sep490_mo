import 'package:dio/dio.dart';
import 'exceptions.dart';

/// Utility class for mapping DioException to domain exceptions
/// 
/// This centralizes the logic for converting framework-specific Dio errors
/// to domain-specific exceptions that can be handled by the ErrorHandler.
/// 
/// Usage:
/// ```dart
/// try {
///   return await apiService.getData();
/// } on DioException catch (e) {
///   throw DioExceptionMapper.mapToException(e, 'Failed to get data');
/// }
/// ```
class DioExceptionMapper {
  // Private constructor - this is a utility class
  DioExceptionMapper._();

  /// Maps a DioException to an appropriate domain exception
  /// 
  /// Converts based on:
  /// - HTTP status codes (401 -> UnauthorizedException, 422 -> ValidationException, etc.)
  /// - Dio exception types (timeout -> NetworkException, etc.)
  /// 
  /// [e] The DioException to map
  /// [context] Optional context message for the error (e.g., "Sign in failed")
  /// 
  /// Returns the appropriate domain exception
  static Exception mapToException(DioException e, [String? context]) {
    final statusCode = e.response?.statusCode;
    final message = _extractErrorMessage(e.response?.data) ?? 
                    context ?? 
                    'Request failed';

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return NetworkException('Connection timeout or network error');

      case DioExceptionType.badResponse:
        if (statusCode == 401) {
          return UnauthorizedException(message);
        } else if (statusCode == 422) {
          return ValidationException(message);
        } else if (statusCode == 404) {
          return ServerException('Not Found: $message', 404);
        } else {
          return ServerException(message, statusCode);
        }

      case DioExceptionType.cancel:
        return ServerException('Request cancelled');

      case DioExceptionType.unknown:
      default:
        return ServerException(
          e.message ?? 'Unknown error${context != null ? ": $context" : ""}',
        );
    }
  }

  /// Extracts error message from API response data
  /// 
  /// Tries to extract from common API response formats:
  /// - {"message": "..."}
  /// - {"error_description": "..."}
  /// - {"msg": "..."}
  /// - Plain string responses
  /// 
  /// Returns null if no message can be extracted
  static String? _extractErrorMessage(dynamic data) {
    if (data is Map<String, dynamic>) {
      return data['message'] ?? 
             data['error_description'] ?? 
             data['msg'];
    } else if (data is String) {
      return data;
    }
    return null;
  }
}
