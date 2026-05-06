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
  displayBadges: (json['displayBadges'] as List<dynamic>?)
      ?.map((e) => Badge.fromJson(e as Map<String, dynamic>))
      .toList(),
  allBadges: (json['allBadges'] as List<dynamic>?)
      ?.map((e) => Badge.fromJson(e as Map<String, dynamic>))
      .toList(),
  fanHubsJoined: (json['fanHubsJoined'] as List<dynamic>?)
      ?.map((e) => JoinedFanHub.fromJson(e as Map<String, dynamic>))
      .toList(),
  oshi: json['oshi'] == null
      ? null
      : Oshi.fromJson(json['oshi'] as Map<String, dynamic>),
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
  'fanHubsJoined': instance.fanHubsJoined,
  'oshi': instance.oshi,
};

const _$UserRoleEnumMap = {UserRole.user: 'USER', UserRole.vtuber: 'VTUBER'};

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

_Badge _$BadgeFromJson(Map<String, dynamic> json) => _Badge(
  userBadgeId: (json['userBadgeId'] as num).toInt(),
  badgeId: (json['badgeId'] as num).toInt(),
  badgeName: json['badgeName'] as String,
  description: json['description'] as String,
  iconUrl: json['iconUrl'] as String?,
  requirement: json['requirement'] as String,
  acquiredAt: DateTime.parse(json['acquiredAt'] as String),
  isDisplay: json['isDisplay'] as bool,
);

Map<String, dynamic> _$BadgeToJson(_Badge instance) => <String, dynamic>{
  'userBadgeId': instance.userBadgeId,
  'badgeId': instance.badgeId,
  'badgeName': instance.badgeName,
  'description': instance.description,
  'iconUrl': instance.iconUrl,
  'requirement': instance.requirement,
  'acquiredAt': instance.acquiredAt.toIso8601String(),
  'isDisplay': instance.isDisplay,
};

_Frame _$FrameFromJson(Map<String, dynamic> json) => _Frame(
  userItemId: (json['userItemId'] as num).toInt(),
  itemId: (json['itemId'] as num).toInt(),
  itemName: json['itemName'] as String,
  description: json['description'] as String?,
  imageUrl: json['imageUrl'] as String?,
  category: json['category'] as String,
  obtainedAt: DateTime.parse(json['obtainedAt'] as String),
);

Map<String, dynamic> _$FrameToJson(_Frame instance) => <String, dynamic>{
  'userItemId': instance.userItemId,
  'itemId': instance.itemId,
  'itemName': instance.itemName,
  'description': instance.description,
  'imageUrl': instance.imageUrl,
  'category': instance.category,
  'obtainedAt': instance.obtainedAt.toIso8601String(),
};

_DailyMission _$DailyMissionFromJson(Map<String, dynamic> json) =>
    _DailyMission(
      likeAmount: (json['likeAmount'] as num).toInt(),
      bonus10: json['bonus10'] as bool,
      bonus20: json['bonus20'] as bool,
    );

Map<String, dynamic> _$DailyMissionToJson(_DailyMission instance) =>
    <String, dynamic>{
      'likeAmount': instance.likeAmount,
      'bonus10': instance.bonus10,
      'bonus20': instance.bonus20,
    };

_Oshi _$OshiFromJson(Map<String, dynamic> json) => _Oshi(
  userId: (json['userId'] as num).toInt(),
  username: json['username'] as String,
  email: json['email'] as String,
  displayName: json['displayName'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  frameUrl: json['frameUrl'] as String?,
);

Map<String, dynamic> _$OshiToJson(_Oshi instance) => <String, dynamic>{
  'userId': instance.userId,
  'username': instance.username,
  'email': instance.email,
  'displayName': instance.displayName,
  'avatarUrl': instance.avatarUrl,
  'frameUrl': instance.frameUrl,
};

_JoinedFanHub _$JoinedFanHubFromJson(Map<String, dynamic> json) =>
    _JoinedFanHub(
      fanHubId: (json['fanHubId'] as num).toInt(),
      hubName: json['hubName'] as String,
      subdomain: json['subdomain'] as String,
      themeColor: json['themeColor'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$JoinedFanHubToJson(_JoinedFanHub instance) =>
    <String, dynamic>{
      'fanHubId': instance.fanHubId,
      'hubName': instance.hubName,
      'subdomain': instance.subdomain,
      'themeColor': instance.themeColor,
      'avatarUrl': instance.avatarUrl,
    };
