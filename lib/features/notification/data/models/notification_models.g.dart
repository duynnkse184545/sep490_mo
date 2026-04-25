// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Notification _$NotificationFromJson(Map<String, dynamic> json) =>
    _Notification(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
      title: json['title'] as String,
      message: json['message'] as String,
      relatedHubId: (json['relatedHubId'] as num?)?.toInt(),
      relatedHubName: json['relatedHubName'] as String?,
      relatedPostId: (json['relatedPostId'] as num?)?.toInt(),
      relatedPostTitle: json['relatedPostTitle'] as String?,
      triggeredByUserId: (json['triggeredByUserId'] as num?)?.toInt(),
      triggeredByUsername: json['triggeredByUsername'] as String?,
      triggeredByAvatarUrl: json['triggeredByAvatarUrl'] as String?,
      isRead: json['isRead'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$NotificationToJson(_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'title': instance.title,
      'message': instance.message,
      'relatedHubId': instance.relatedHubId,
      'relatedHubName': instance.relatedHubName,
      'relatedPostId': instance.relatedPostId,
      'relatedPostTitle': instance.relatedPostTitle,
      'triggeredByUserId': instance.triggeredByUserId,
      'triggeredByUsername': instance.triggeredByUsername,
      'triggeredByAvatarUrl': instance.triggeredByAvatarUrl,
      'isRead': instance.isRead,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$NotificationTypeEnumMap = {
  NotificationType.postLike: 'POST_LIKE',
  NotificationType.postComment: 'POST_COMMENT',
  NotificationType.hubInvite: 'HUB_INVITE',
  NotificationType.memberReport: 'MEMBER_REPORT',
  NotificationType.postReport: 'POST_REPORT',
};
