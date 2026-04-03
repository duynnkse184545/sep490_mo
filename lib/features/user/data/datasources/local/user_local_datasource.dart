import 'package:sep490_mo/features/user/data/models/user_models.dart';

abstract class UserLocalDataSource {
  /// Cache the current user
  Future<void> cacheUser(User user);

  /// Get the cached user
  Future<User?> getCachedUser();

  /// Clear the user cache
  Future<void> clearCache();
}
