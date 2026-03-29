import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_wrapper.freezed.dart';
part 'api_response_wrapper.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required bool success,
    required String message,
    required T data,
  }) = _ApiResponse<T>;

  factory ApiResponse.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT,
      ) => _$ApiResponseFromJson(json, fromJsonT);
}