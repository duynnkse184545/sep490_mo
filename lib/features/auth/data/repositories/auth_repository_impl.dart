import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/services/token_service.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/auth/data/datasources/local/auth_local_datasource.dart';
import 'package:sep490_mo/features/auth/data/datasources/remote/auth_remote_datasource.dart';
import 'package:sep490_mo/features/auth/data/models/auth_models.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;
  final TokenService _tokenService;

  AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
    required AuthLocalDataSource localDataSource,
    required TokenService tokenService,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource,
       _tokenService = tokenService;

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
    });
  }

  @override
  TaskResult<void> signOut() {
    return ErrorHandler.execute(() async {
      // Try to sign out remotely, but don't fail if it errors (e.g. offline)
      await ErrorHandler.handleSafely(
        () => _remoteDataSource.signOut(),
        'Remote SignOut',
      );

      // Clear tokens using TokenService
      await _tokenService.clearTokens();

      // Clear cached user data (optional, don't fail if this fails)
      await ErrorHandler.executeOrNull(() => _localDataSource.clearUserCache());
    });
  }
}
