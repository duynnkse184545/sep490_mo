// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  userId: (json['userId'] as num).toInt(),
  username: json['username'] as String,
  email: json['email'] as String,
  displayName: json['displayName'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  frameUrl: json['frameUrl'] as String?,
  bio: json['bio'] as String,
  role: $enumDecode(_$UserRoleEnumMap, json['role']),
  points: (json['points'] as num).toInt(),
  paidPoints: (json['paidPoints'] as num).toInt(),
  translateLanguage: json['translateLanguage'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  isActive: json['isActive'] as bool,
  totalBadges: (json['totalBadges'] as num).toInt(),
  totalFanHubs: (json['totalFanHubs'] as num).toInt(),
  totalReceivedGifts: (json['totalReceivedGifts'] as num).toInt(),
  displayBadges: json['displayBadges'] as List<dynamic>?,
  allBadges: json['allBadges'] as List<dynamic>?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'userId': instance.userId,
  'username': instance.username,
  'email': instance.email,
  'displayName': instance.displayName,
  'avatarUrl': instance.avatarUrl,
  'frameUrl': instance.frameUrl,
  'bio': instance.bio,
  'role': _$UserRoleEnumMap[instance.role]!,
  'points': instance.points,
  'paidPoints': instance.paidPoints,
  'translateLanguage': instance.translateLanguage,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'isActive': instance.isActive,
  'totalBadges': instance.totalBadges,
  'totalFanHubs': instance.totalFanHubs,
  'totalReceivedGifts': instance.totalReceivedGifts,
  'displayBadges': instance.displayBadges,
  'allBadges': instance.allBadges,
};

const _$UserRoleEnumMap = {UserRole.VTUBER: 'VTUBER', UserRole.USER: 'USER'};

_CreateProfileRequest _$CreateProfileRequestFromJson(
  Map<String, dynamic> json,
) => _CreateProfileRequest(
  username: json['username'] as String,
  email: json['email'] as String,
  displayName: json['displayName'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  frameUrl: json['frameUrl'] as String?,
  bio: json['bio'] as String?,
  translateLanguage: json['translateLanguage'] as String?,
);

Map<String, dynamic> _$CreateProfileRequestToJson(
  _CreateProfileRequest instance,
) => <String, dynamic>{
  'username': instance.username,
  'email': instance.email,
  'displayName': instance.displayName,
  'avatarUrl': instance.avatarUrl,
  'frameUrl': instance.frameUrl,
  'bio': instance.bio,
  'translateLanguage': instance.translateLanguage,
};

_UpdateProfileRequest _$UpdateProfileRequestFromJson(
  Map<String, dynamic> json,
) => _UpdateProfileRequest(
  email: json['email'] as String?,
  displayName: json['displayName'] as String?,
  bio: json['bio'] as String?,
  translateLanguage: json['translateLanguage'] as String?,
);

Map<String, dynamic> _$UpdateProfileRequestToJson(
  _UpdateProfileRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'displayName': instance.displayName,
  'bio': instance.bio,
  'translateLanguage': instance.translateLanguage,
};

_AvatarFrameRequest _$AvatarFrameRequestFromJson(Map<String, dynamic> json) =>
    _AvatarFrameRequest(
      avatar: json['avatar'] as String,
      frame: json['frame'] as String,
    );

Map<String, dynamic> _$AvatarFrameRequestToJson(_AvatarFrameRequest instance) =>
    <String, dynamic>{'avatar': instance.avatar, 'frame': instance.frame};
