import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_models.freezed.dart';

part 'user_models.g.dart';

enum UserRole {
  @JsonValue('USER')
  user,
  @JsonValue('VTUBER')
  vtuber,
}

@freezed
abstract class User with _$User {
  const factory User({
    required int userId,
    required String username,
    required String email,
    String? displayName,
    String? avatarUrl,
    String? frameUrl,
    required String bio,
    required UserRole role,
    required int points,
    required int paidPoints,
    String? translateLanguage,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isActive,
    required int totalBadges,
    required int totalFanHubs,
    required int totalReceivedGifts,
    List<Badge>? displayBadges,
    List<Badge>? allBadges,
    List<JoinedFanHub>? fanHubsJoined,
    Oshi? oshi,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

/// Type-safe request models for creating user profile
@freezed
abstract class CreateProfileRequest with _$CreateProfileRequest {
  const factory CreateProfileRequest({
    required String username,
    required String email,
    String? displayName,
    String? avatarUrl,
    String? frameUrl,
    String? bio,
    String? translateLanguage,
  }) = _CreateProfileRequest;

  factory CreateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateProfileRequestFromJson(json);
}

@freezed
abstract class UpdateProfileRequest with _$UpdateProfileRequest {
  const factory UpdateProfileRequest({
    String? email,
    String? displayName,
    String? bio,
    String? translateLanguage,
  }) = _UpdateProfileRequest;

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestFromJson(json);
}

@freezed
abstract class Badge with _$Badge {
  const factory Badge({
    required int userBadgeId,
    required int badgeId,
    required String badgeName,
    required String description,
    String? iconUrl,
    required String requirement,
    required DateTime acquiredAt,
    required bool isDisplay,
  }) = _Badge;

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
}

@freezed
abstract class Frame with _$Frame {
  const factory Frame({
    required int userItemId,
    required int itemId,
    required String itemName,
    String? description,
    String? imageUrl,
    required String category,
    required DateTime obtainedAt,
  }) = _Frame;

  factory Frame.fromJson(Map<String, dynamic> json) => _$FrameFromJson(json);
}

@freezed
abstract class DailyMission with _$DailyMission {
  const factory DailyMission({
    required int likeAmount,
    required bool bonus10,
    required bool bonus20,
  }) = _DailyMission;

  factory DailyMission.fromJson(Map<String, dynamic> json) =>
      _$DailyMissionFromJson(json);
}

@freezed
abstract class Oshi with _$Oshi{
  const factory Oshi({
    required int userId,
    required String username,
    required String email,
    String? displayName,
    String? avatarUrl,
    String? frameUrl,
  }) = _Oshi;

  factory Oshi.fromJson(Map<String, dynamic> json) => _$OshiFromJson(json);
}

@freezed
abstract class JoinedFanHub with _$JoinedFanHub{
  const factory JoinedFanHub({
    required int fanHubId,
    required String hubName,
    required String subdomain,
  String? themeColor,
     String? avatarUrl,
  }) = _JoinedFanHub;

  factory JoinedFanHub.fromJson(Map<String, dynamic> json) => _$JoinedFanHubFromJson(json);
}
