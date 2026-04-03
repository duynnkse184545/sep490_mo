import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/services/token_service.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/auth/data/datasources/remote/auth_remote_datasource.dart';
import 'package:sep490_mo/features/auth/data/models/auth_models.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final TokenService _tokenService;

  AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
    required TokenService tokenService,
  }) : _remoteDataSource = remoteDataSource,
       _tokenService = tokenService;

  @override
  TaskVoid signUp(SignUpRequest request) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.signUp(request);
    });
    }

  @override
  TaskVoid signIn(SignInRequest request) {
    return ErrorHandler.execute(() async {
      // Get auth response with tokens
      final authResponse = await _remoteDataSource.signIn(request);

      // Save tokens using TokenService
      await _tokenService.saveTokens(
        accessToken: authResponse.token,
        refreshToken: authResponse.refreshToken,
      );
      await _tokenService.saveUserId(authResponse.id);
    });
  }

  @override
  TaskVoid signOut() {
    return ErrorHandler.execute(() async {
      // Try to sign out remotely, but don't fail if it errors (e.g. offline)
      await ErrorHandler.handleSafely(
        () => _remoteDataSource.signOut(),
        'Remote SignOut',
      );

      // Clear tokens using TokenService
      await _tokenService.clearTokens();
      await _tokenService.clearUserId();

      // Clear cached user data (optional, don't fail if this fails)
      // await ErrorHandler.executeOrNull(() => _localDataSource.clearUserCache());
    });
  }

  @override
  TaskVoid verify(String email) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.verify(email);
      });
  }

  @override
  TaskVoid checkAuthStatus() {
    return ErrorHandler.execute(() async {
      // Check if valid tokens exist (includes JWT expiration check)
      // if (_isTokenExpiringSoon(accessToken)) {
      //   2   await _refreshAccessToken();
      //   3 }
      final isValid = await _tokenService.hasValidTokens();
      if (!isValid) {
        throw Exception('No valid tokens found');
      }
    });
  }
}
