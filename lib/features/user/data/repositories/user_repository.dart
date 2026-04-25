import 'dart:io';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';

abstract class UserRepository {
  /// Get the current user
  TaskResult<User> getCurrentUser({bool forceRefresh = false});

  /// Get user by ID
  TaskResult<User> getUserById(int userId);

  /// Get user badges
  TaskResult<List<Badge>> getBadges(int userId);

  /// Get all available frames
  TaskResult<List<Frame>> getFrames();

  /// Get user items (owned frames)
  TaskResult<List<Frame>> getMyItems();

  /// Get user daily mission
  TaskResult<DailyMission> getDailyMission();

  /// Update avatar frame
  TaskVoid updateAvatarFrame({String? frameName, required File avatarFile});

  /// Set user oshi
  TaskVoid setOshi(String oshiUsername);

  /// Select badges to display
  TaskVoid selectDisplayBadges(List<int> userBadgeIds);

  /// Update user profile
  TaskResult<void> updateProfile(UpdateProfileRequest request);
}
