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

_FanHubMember _$FanHubMemberFromJson(Map<String, dynamic> json) =>
    _FanHubMember(
      memberId: (json['memberId'] as num).toInt(),
      hubId: (json['hubId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      roleInHub: json['roleInHub'] as String?,
      status: json['status'] as String,
      fanHubScore: (json['fanHubScore'] as num).toInt(),
      joinedAt: json['joinedAt'] == null
          ? null
          : DateTime.parse(json['joinedAt'] as String),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$FanHubMemberToJson(_FanHubMember instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'hubId': instance.hubId,
      'userId': instance.userId,
      'roleInHub': instance.roleInHub,
      'status': instance.status,
      'fanHubScore': instance.fanHubScore,
      'joinedAt': instance.joinedAt?.toIso8601String(),
      'title': instance.title,
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
      description: json['description'] as String?,
      bannerUrl: json['bannerUrl'] as String?,
      backgroundUrl: json['backgroundUrl'] as String?,
      themeColor: json['themeColor'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      isPrivate: json['isPrivate'] as bool?,
      requiresApproval: json['requiresApproval'] as bool?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      highlightImgUrls: (json['highlightImgUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$UpdateFanHubRequestToJson(
  _UpdateFanHubRequest instance,
) => <String, dynamic>{
  'hubName': instance.hubName,
  'description': instance.description,
  'bannerUrl': instance.bannerUrl,
  'backgroundUrl': instance.backgroundUrl,
  'themeColor': instance.themeColor,
  'avatarUrl': instance.avatarUrl,
  'isPrivate': instance.isPrivate,
  'requiresApproval': instance.requiresApproval,
  'categories': instance.categories,
  'highlightImgUrls': instance.highlightImgUrls,
};

_FanHubUploadRequest _$FanHubUploadRequestFromJson(Map<String, dynamic> json) =>
    _FanHubUploadRequest(
      avatar: json['avatar'] as String,
      banner: json['banner'] as String,
    );

Map<String, dynamic> _$FanHubUploadRequestToJson(
  _FanHubUploadRequest instance,
) => <String, dynamic>{'avatar': instance.avatar, 'banner': instance.banner};
