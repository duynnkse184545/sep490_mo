import 'dart:io';
import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/services/token_service.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/user/data/datasources/local/user_local_datasource.dart';
import 'package:sep490_mo/features/user/data/datasources/remote/user_remote_datasource.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';
import 'package:sep490_mo/features/user/data/repositories/user_repository.dart';

/// Implementation of [UserRepository] with cache-first strategy with TTL
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _remoteDataSource;
  final UserLocalDataSource _localDataSource;
  final TokenService _tokenService;

  UserRepositoryImpl({
    required UserRemoteDataSource remoteDataSource,
    required UserLocalDataSource localDataSource,
    required TokenService tokenService,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource,
       _tokenService = tokenService;

  @override
  TaskResult<User> getCurrentUser({bool forceRefresh = false}) {
    return ErrorHandler.execute(() async {
      final userId = await _tokenService.getUserId();

      if (!forceRefresh) {
        final cachedUser = await ErrorHandler.executeOrNull(
          () => _localDataSource.getCachedUser(),
        );

        if (cachedUser != null) {
          final now = DateTime.now();
          final cacheAge = now.difference(cachedUser.updatedAt);

          if (cacheAge < const Duration(minutes: 5)) {
            return cachedUser;
          }
        }
      }

      try {
        final user = await _remoteDataSource.getUserById(userId);
        await ErrorHandler.executeOrNull(() => _localDataSource.cacheUser(user));
        return user;
      } catch (e) {
        final cachedUser = await ErrorHandler.executeOrNull(() => _localDataSource.getCachedUser());
        if (cachedUser != null) return cachedUser;
        rethrow;
      }
    });
  }

  @override
  TaskResult<User> getUserById(int userId) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getUserById(userId);
    });
  }

  @override
  TaskResult<List<Badge>> getBadges(int userId) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getBadges(userId);
    });
  }

  @override
  TaskResult<List<Frame>> getFrames() {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getFrames();
    });
  }

  @override
  TaskResult<List<Frame>> getMyItems() {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getMyItems();
    });
  }

  @override
  TaskResult<DailyMission> getDailyMission() {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getDailyMission();
    });
  }

  @override
  TaskVoid updateAvatarFrame({String? frameName, required File avatarFile}) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.updateAvatarFrame(frameName: frameName, avatarFile: avatarFile);
    });
  }

  @override
  TaskVoid setOshi(String oshiUsername) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.setOshi(oshiUsername);
    });
  }

  @override
  TaskVoid selectDisplayBadges(List<int> userBadgeIds) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.selectDisplayBadges(userBadgeIds);
    });
  }

  @override
  TaskResult<void> updateProfile(UpdateProfileRequest request) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.updateProfile(request);

      final cachedUser = await ErrorHandler.executeOrNull(() => _localDataSource.getCachedUser());

      if (cachedUser != null) {
        final updatedUser = cachedUser.copyWith(
          email: request.email ?? cachedUser.email,
          displayName: request.displayName ?? cachedUser.displayName,
          bio: request.bio ?? cachedUser.bio,
          translateLanguage: request.translateLanguage ?? cachedUser.translateLanguage,
          updatedAt: DateTime.now(),
        );

        await ErrorHandler.executeOrNull(() => _localDataSource.cacheUser(updatedUser));
      }
    });
  }
}
