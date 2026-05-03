import 'package:sep490_mo/features/notification/data/models/notification_models.dart';

abstract class NotificationAsyncRemoteDataSource {
  Future<List<Notification>> getAllNotifications({
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });
  Future<List<Notification>> getUnreadNotifications({
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });
  Future<int> getUnreadNotificationCount();
  Future<void> readAllNotifications();
  Future<void> readNotification(int notificationId);
  Future<void> deleteNotification(int notificationId);
  Future<void> deleteAllNotifications();
}
