import 'package:sep490_mo/features/user/data/models/user_models.dart';

abstract class UserRemoteDataSource {
  /// Get the current user
  Future<User> getCurrentUser(int userId);

  /// Update user profile
  Future<void> updateProfile(UpdateProfileRequest request);

  /// Check if username is available
  // Future<bool> isUsernameAvailable(String username);
}
