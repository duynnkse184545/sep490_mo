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
    required bool isRead,
    required DateTime createdAt,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
