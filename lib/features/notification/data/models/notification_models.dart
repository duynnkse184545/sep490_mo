import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_models.freezed.dart';
part 'notification_models.g.dart';

enum NotificationType {
  @JsonValue('POST_LIKE')
  postLike,
  @JsonValue('POST_COMMENT')
  postComment,
  @JsonValue('HUB_INVITE')
  hubInvite,
  @JsonValue('MEMBER_REPORT')
  memberReport,
  @JsonValue('POST_REPORT')
  postReport,
  @JsonValue('POST_APPROVED')
  postApproved,
  @JsonValue('MEMBER_BANNED')
  memberBanned,
  @JsonValue('REPORT_POST_RESOLVED')
  reportPostResolved,
  @JsonValue('VTUBER_APPLICATION_APPROVED')
  vtuberApplicationApproved,
  @JsonValue('VTUBER_APPLICATION_REJECTED')
  vtuberApplicationRejected,
  @JsonValue('FAN_HUB_STRIKE')
  fanHubStrike,
}

@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    required int id,
    required NotificationType type,
    required String title,
    required String message,
    int? relatedHubId,
    String? relatedHubName,
    int? relatedPostId,
    String? relatedPostTitle,
    int? triggeredByUserId,
    String? triggeredByUsername,
    String? triggeredByAvatarUrl,
    String? triggeredByFrameUrl,
    required bool isRead,
    required DateTime createdAt,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}

@freezed
abstract class StreamStatus with _$StreamStatus {
  const factory StreamStatus({
    required String status,
    required int activeConnections,
  }) = _StreamStatus;

  factory StreamStatus.fromJson(Map<String, dynamic> json) =>
      _$StreamStatusFromJson(json);
}