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
      triggeredByFrameUrl: json['triggeredByFrameUrl'] as String?,
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
      'triggeredByFrameUrl': instance.triggeredByFrameUrl,
      'isRead': instance.isRead,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$NotificationTypeEnumMap = {
  NotificationType.postLike: 'POST_LIKE',
  NotificationType.postComment: 'POST_COMMENT',
  NotificationType.memberReport: 'MEMBER_REPORT',
  NotificationType.postReport: 'POST_REPORT',
  NotificationType.postApproved: 'POST_APPROVED',
  NotificationType.postRejected: 'POST_REJECTED',
  NotificationType.memberBanned: 'MEMBER_BANNED',
  NotificationType.reportPostResolved: 'REPORT_POST_RESOLVED',
  NotificationType.vtuberApplicationApproved: 'VTUBER_APPLICATION_APPROVED',
  NotificationType.vtuberApplicationRejected: 'VTUBER_APPLICATION_REJECTED',
  NotificationType.fanHubStrike: 'FAN_HUB_STRIKE',
};

_StreamStatus _$StreamStatusFromJson(Map<String, dynamic> json) =>
    _StreamStatus(
      status: json['status'] as String,
      activeConnections: (json['activeConnections'] as num).toInt(),
    );

Map<String, dynamic> _$StreamStatusToJson(_StreamStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'activeConnections': instance.activeConnections,
    };
