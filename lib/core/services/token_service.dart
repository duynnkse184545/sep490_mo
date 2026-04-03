/// Token service interface for secure token storage
abstract class TokenService {
  /// Save access and refresh tokens
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  });

  /// Save user ID
  Future<void> saveUserId(int userId);

  /// Get access token
  Future<String?> getAccessToken();

  /// Get refresh token
  Future<String?> getRefreshToken();

  /// Get user ID
  Future<int?> getUserId();

  /// Clear all tokens
  Future<void> clearTokens();

  /// Clear user ID
  Future<void> clearUserId();

  /// Check if valid tokens exist
  Future<bool> hasValidTokens();
}
