// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fanhub_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FanHub _$FanHubFromJson(Map<String, dynamic> json) => _FanHub(
  fanHubId: (json['fanHubId'] as num).toInt(),
  subdomain: json['subdomain'] as String,
  hubName: json['hubName'] as String,
  description: json['description'] as String?,
  bannerUrl: json['bannerUrl'] as String?,
  highlightImgUrls: (json['highlightImgUrls'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  backgroundUrl: json['backgroundUrl'] as String?,
  themeColor: json['themeColor'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  isPrivate: json['isPrivate'] as bool,
  requiresApproval: json['requiresApproval'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
  ownerUserId: (json['ownerUserId'] as num).toInt(),
  ownerUsername: json['ownerUsername'] as String,
  ownerDisplayName: json['ownerDisplayName'] as String,
  categories: (json['categories'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  memberCount: (json['memberCount'] as num).toInt(),
);

Map<String, dynamic> _$FanHubToJson(_FanHub instance) => <String, dynamic>{
  'fanHubId': instance.fanHubId,
  'subdomain': instance.subdomain,
  'hubName': instance.hubName,
  'description': instance.description,
  'bannerUrl': instance.bannerUrl,
  'highlightImgUrls': instance.highlightImgUrls,
  'backgroundUrl': instance.backgroundUrl,
  'themeColor': instance.themeColor,
  'avatarUrl': instance.avatarUrl,
  'isPrivate': instance.isPrivate,
  'requiresApproval': instance.requiresApproval,
  'createdAt': instance.createdAt.toIso8601String(),
  'ownerUserId': instance.ownerUserId,
  'ownerUsername': instance.ownerUsername,
  'ownerDisplayName': instance.ownerDisplayName,
  'categories': instance.categories,
  'memberCount': instance.memberCount,
};

_FanHubStrike _$FanHubStrikeFromJson(Map<String, dynamic> json) =>
    _FanHubStrike(
      reason: json['reason'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$FanHubStrikeToJson(_FanHubStrike instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_FanHubAnalytics _$FanHubAnalyticsFromJson(Map<String, dynamic> json) =>
    _FanHubAnalytics(
      totalPosts: (json['totalPosts'] as num).toInt(),
      totalJoinedMembers: (json['totalJoinedMembers'] as num).toInt(),
      totalStrikes: (json['totalStrikes'] as num).toInt(),
      topMembers: (json['topMembers'] as List<dynamic>)
          .map((e) => Member.fromJson(e as Map<String, dynamic>))
          .toList(),
      strikes: (json['strikes'] as List<dynamic>?)
          ?.map((e) => FanHubStrike.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FanHubAnalyticsToJson(_FanHubAnalytics instance) =>
    <String, dynamic>{
      'totalPosts': instance.totalPosts,
      'totalJoinedMembers': instance.totalJoinedMembers,
      'totalStrikes': instance.totalStrikes,
      'topMembers': instance.topMembers,
      'strikes': instance.strikes,
    };

_FanHubCategory _$FanHubCategoryFromJson(Map<String, dynamic> json) =>
    _FanHubCategory(
      hubCategoryId: (json['hubCategoryId'] as num).toInt(),
      categoryName: json['categoryName'] as String,
      hubId: (json['hubId'] as num).toInt(),
    );

Map<String, dynamic> _$FanHubCategoryToJson(_FanHubCategory instance) =>
    <String, dynamic>{
      'hubCategoryId': instance.hubCategoryId,
      'categoryName': instance.categoryName,
      'hubId': instance.hubId,
    };

_CreateFanHubRequest _$CreateFanHubRequestFromJson(Map<String, dynamic> json) =>
    _CreateFanHubRequest(
      hubName: json['hubName'] as String,
      subdomain: json['subdomain'] as String,
      description: json['description'] as String,
      themeColor: json['themeColor'] as String,
      category: (json['category'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isPrivate: json['isPrivate'] as bool,
      requiresApproval: json['requiresApproval'] as bool,
    );

Map<String, dynamic> _$CreateFanHubRequestToJson(
  _CreateFanHubRequest instance,
) => <String, dynamic>{
  'hubName': instance.hubName,
  'subdomain': instance.subdomain,
  'description': instance.description,
  'themeColor': instance.themeColor,
  'category': instance.category,
  'isPrivate': instance.isPrivate,
  'requiresApproval': instance.requiresApproval,
};

_UpdateFanHubRequest _$UpdateFanHubRequestFromJson(Map<String, dynamic> json) =>
    _UpdateFanHubRequest(
      hubName: json['hubName'] as String?,
      subdomain: json['subdomain'] as String?,
      description: json['description'] as String?,
      themeColor: json['themeColor'] as String?,
      isPrivate: json['isPrivate'] as bool?,
      requiresApproval: json['requiresApproval'] as bool?,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$UpdateFanHubRequestToJson(
  _UpdateFanHubRequest instance,
) => <String, dynamic>{
  'hubName': instance.hubName,
  'subdomain': instance.subdomain,
  'description': instance.description,
  'themeColor': instance.themeColor,
  'isPrivate': instance.isPrivate,
  'requiresApproval': instance.requiresApproval,
  'category': instance.category,
};
