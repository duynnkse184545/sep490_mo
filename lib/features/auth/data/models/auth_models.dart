import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

@freezed
abstract class SignInRequest with _$SignInRequest {
  const factory SignInRequest({
    required String username,
    required String password,
  }) = _SignInRequest;

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);
}

/// Domain models for sign in result (simplified for app use)
/// Same structure as TokenRefreshResponse
@freezed
abstract class SignInResponse with _$SignInResponse {
  const factory SignInResponse({
    required String token,
    required String refreshToken,
    required int id,
    required String username,
    String? tokenType,
  }) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
}

@freezed
abstract class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest({
    required String email,
    required String password,
    required String username,
    required String displayName,
    required String translateLanguage,
    String? bio,
    required String otp,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}
