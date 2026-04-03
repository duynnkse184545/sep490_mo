import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_wrapper.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.success({
    required T data,
  }) = ApiResponseSuccess<T>;

  const factory ApiResponse.failure({
    required String message, // this is actually data field from API
    int? error
  }) = ApiResponseFailure<T>;

  factory ApiResponse.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT,
      ) {
    if (json['success'] == true) {
      return ApiResponse.success(
        data: fromJsonT(json['data']),
      );
    } else {
      return ApiResponse.failure(
        message: json['data'] as String, // ← data field, not message
      );
    }
  }
}