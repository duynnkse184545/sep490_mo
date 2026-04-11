import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';

abstract class UserRepository {
  /// Get the current user
  ///
  /// Uses a cache-first strategy with TTL (5 minutes):
  /// - Returns cached user if fresh (< 5 minutes)
  /// - Fetches from remote if cache is stale or missing
  /// - Falls back to stale cache if remote fails (offline support)
  ///
  /// [forceRefresh] - If true, bypasses cache and fetches from remote
  TaskResult<User> getCurrentUser({bool forceRefresh = false});

  /// Update user profile
  ///
  /// Updates the profile on remote and caches the result.
  TaskResult<void> updateProfile(UpdateProfileRequest request);

  /// Check if a username is available
  ///
  /// Returns true if the username is not taken.
  // TaskResult<bool> isUsernameAvailable(String username);
}
