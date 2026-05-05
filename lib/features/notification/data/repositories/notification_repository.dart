import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/notification/data/models/notification_models.dart';

abstract class NotificationRepository {
  TaskResult<List<Notification>> getNotifications({
    int pageNo = 0,
    int pageSize = 20,
    String sortBy = 'createdAt',
  });
  TaskResult<List<Notification>> getUnreadNotifications({
    int pageNo = 0,
    int pageSize = 20,
    String sortBy = 'createdAt',
  });
  TaskResult<int> getUnreadNotificationCount();
  TaskVoid readAllNotifications();
  TaskVoid readNotification(int notificationId);
  TaskVoid deleteNotification(int notificationId);
  TaskVoid deleteAllNotifications();

  /// Watch local cache for notifications
  StreamEither<List<Notification>> watchNotifications({int limit = 50, int offset = 0});

  /// Live stream from remote that updates local cache
  StreamEither<Notification> listenToRemoteNotifications();

  TaskResult<StreamStatus> getStreamStatus();
}
