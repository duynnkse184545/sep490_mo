import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'token_service.dart';

class TokenServiceImpl implements TokenService {
  final FlutterSecureStorage _secureStorage;

  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  static const String _userIdKey = 'user_id';

  TokenServiceImpl(this._secureStorage);

  @override
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    try {
      await Future.wait([
        _secureStorage.write(key: _accessTokenKey, value: accessToken),
        _secureStorage.write(key: _refreshTokenKey, value: refreshToken),
      ]);
    } catch (e) {
      throw CacheException('Failed to save tokens: ${e.toString()}');
    }
  }

  @override
  Future<void> saveUserId(int userId) async {
    try {
      await _secureStorage.write(key: _userIdKey, value: userId.toString());
    } catch (e) {
      throw CacheException('Failed to save userId: ${e.toString()}');
    }
  }

  @override
  Future<String?> getAccessToken() async {
    try {
      return await _secureStorage.read(key: _accessTokenKey);
    } catch (e) {
      throw CacheException('Failed to get access token: ${e.toString()}');
    }
  }

  @override
  Future<String?> getRefreshToken() async {
    try {
      return await _secureStorage.read(key: _refreshTokenKey);
    } catch (e) {
      throw CacheException('Failed to get refresh token: ${e.toString()}');
    }
  }

  @override
  Future<int?> getUserId() async {
    try {
      final value = await _secureStorage.read(key: _userIdKey);
      return value != null ? int.parse(value) : null;
    } catch (e) {
      throw CacheException('Failed to get userId: ${e.toString()}');
    }
  }

  @override
  Future<void> clearTokens() async {
    try {
      await Future.wait([
        _secureStorage.delete(key: _accessTokenKey),
        _secureStorage.delete(key: _refreshTokenKey),
      ]);
    } catch (e) {
      throw CacheException('Failed to clear tokens: ${e.toString()}');
    }
  }

  @override
  Future<void> clearUserId() async {
    try {
      await _secureStorage.delete(key: _userIdKey);
    } catch (e) {
      throw CacheException('Failed to clear userId: ${e.toString()}');
    }
  }

  @override
  Future<bool> hasValidTokens() async {
    try {
      final accessToken = await getAccessToken();
      return accessToken != null;
    } catch (e) {
      return false;
    }
  }

  // bool _isTokenExpired(String token) {
  //   try {
  //     final parts = token.split('.');
  //     if (parts.length != 3) return true;
  //
  //     final payload = parts[1];
  //     final normalized = base64Url.normalize(payload);
  //     final decoded = jsonDecode(utf8.decode(base64Url.decode(normalized))) as Map<String, dynamic>;
  //
  //     final exp = decoded['exp'];
  //     if (exp == null) return false;
  //
  //     final expiryDate = DateTime.fromMillisecondsSinceEpoch(exp * 1000);
  //     return DateTime.now().isAfter(expiryDate);
  //   } catch (e) {
  //     return true;
  //   }
  // }
}
