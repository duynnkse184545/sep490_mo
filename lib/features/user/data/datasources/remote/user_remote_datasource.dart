import 'dart:io';
import 'package:sep490_mo/features/user/data/models/user_models.dart';

abstract class UserRemoteDataSource {
  /// Get user by ID
  Future<User> getUserById(int userId);

  /// Get user badges
  Future<List<Badge>> getBadges(int userId);

  /// Get all available frames
  Future<List<Frame>> getFrames();

  /// Get user items (owned frames)
  Future<List<Frame>> getMyItems();

  /// Get user daily mission
  Future<DailyMission> getDailyMission();

  /// Update avatar frame
  Future<void> updateAvatarFrame({String? frameName, required File avatarFile});

  /// Set user oshi
  Future<void> setOshi(String oshiUsername);

  /// Select badges to display
  Future<void> selectDisplayBadges(List<int> userBadgeIds);

  /// Update user profile
  Future<void> updateProfile(UpdateProfileRequest request);
}
