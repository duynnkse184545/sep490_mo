import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_models.freezed.dart';
part 'user_models.g.dart';

enum UserRole { VTUBER, USER }

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
    List<dynamic>? displayBadges,
    List<dynamic>? allBadges,
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
abstract class AvatarFrameRequest with _$AvatarFrameRequest {
  const factory AvatarFrameRequest({
    required String avatar,
    required String frame,
  }) = _AvatarFrameRequest;

  factory AvatarFrameRequest.fromJson(Map<String, dynamic> json) =>
      _$AvatarFrameRequestFromJson(json);
}