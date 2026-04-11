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

  // ═══════════════════════════════════════════════════════════════
  // APPROACH 3: Cache-First with TTL (Current Implementation)
  // ═══════════════════════════════════════════════════════════════
  // Benefits:
  // - Fast: Returns cached data if fresh (< 5 minutes)
  // - Fresh: Fetches from remote if cache is stale
  // - Offline: Falls back to stale cache if remote fails
  // - Best UX: Balance of speed and freshness
  // ═══════════════════════════════════════════════════════════════
  @override
  TaskResult<User> getCurrentUser({bool forceRefresh = false}) {
    return ErrorHandler.execute(() async {
      // If not forcing refresh, try cache first
      final userId = await _tokenService.getUserId();
      if (!forceRefresh) {
        final cachedUser = await ErrorHandler.executeOrNull(
          () => _localDataSource.getCachedUser(),
        );

        if (cachedUser != null) {
          // Check if cache is fresh (< 5 minutes old)
          final now = DateTime.now();
          final cacheAge = now.difference(cachedUser.updatedAt);

          if (cacheAge < const Duration(minutes: 5)) {
            // Cache is fresh - return immediately!
            return cachedUser;
          }
          // Cache is stale - will fetch from remote below
        }
      }

      // Cache miss, stale, or force refresh - fetch from remote
      try {
        final user = await _remoteDataSource.getCurrentUser(userId);

        // Update cache
        await ErrorHandler.executeOrNull(
          () => _localDataSource.cacheUser(user),
        );

        return user;
      } catch (e) {
        // Remote failed - fallback to stale cache if available
        final cachedUser = await ErrorHandler.executeOrNull(
          () => _localDataSource.getCachedUser(),
        );

        if (cachedUser != null) {
          // Return stale data - better than nothing!
          return cachedUser;
        }

        rethrow;
      }

      // ═══════════════════════════════════════════════════════════════
      // APPROACH 2: Simple Cache-First (Alternative - Commented Out)
      // ═══════════════════════════════════════════════════════════════
      // Uncomment this and remove Approach 3 above if you want:
      // - Maximum speed (always returns cache if exists)
      // - No TTL check (cache never expires)
      // - Simpler logic (no freshness validation)
      // ═══════════════════════════════════════════════════════════════
      /*
      // Try cache first
      final cachedUser = await ErrorHandler.executeOrNull(
        () => _localDataSource.getCachedUser(),
      );

      if (cachedUser != null) {
        // Cache exists - return immediately!
        return cachedUser;
      }

      // Cache miss - fetch from remote
      final user = await _remoteDataSource.getCurrentUser();

      // Update cache
      await ErrorHandler.executeOrNull(
        () => _localDataSource.cacheUser(user),
      );

      return user;
      */
    });
  }

  @override
  TaskResult<void> updateProfile(UpdateProfileRequest request) {
    return ErrorHandler.execute(() async {
      // Update remote
      await _remoteDataSource.updateProfile(request);

      // Update cache optimistically
      final cachedUser = await ErrorHandler.executeOrNull(
        () => _localDataSource.getCachedUser(),
      );

      if (cachedUser != null) {
        final updatedUser = cachedUser.copyWith(
          email: request.email ?? cachedUser.email,
          displayName: request.displayName ?? cachedUser.displayName,
          bio: request.bio ?? cachedUser.bio,
          translateLanguage:
              request.translateLanguage ?? cachedUser.translateLanguage,
          updatedAt: DateTime.now(),
        );

        await ErrorHandler.executeOrNull(
          () => _localDataSource.cacheUser(updatedUser),
        );
      }
    });
  }

  // @override
  // TaskResult<bool> isUsernameAvailable(String username) {
  //   return ErrorHandler.execute(() async {
  //     return await _remoteDataSource.isUsernameAvailable(username);
  //   });
  // }
}
