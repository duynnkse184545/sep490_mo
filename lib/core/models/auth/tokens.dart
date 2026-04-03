import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens.freezed.dart';
part 'tokens.g.dart';

/// Base model for authentication token responses
/// Contains common fields shared between sign in and token refresh responses
@freezed
abstract class Tokens with _$Tokens {
  const factory Tokens({
    required String token,
    required String refreshToken,
    required String id,
    required String username,
    String? tokenType,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}
