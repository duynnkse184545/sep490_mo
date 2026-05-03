import 'package:sep490_mo/features/notification/data/models/notification_models.dart';

abstract class NotificationLocalDataSource {
  Future<void> cacheNotifications(List<Notification> notifications);
  Stream<List<Notification>> watchNotifications({int limit = 50, int offset = 0});
  Future<void> markAsRead(int notificationId);
  Future<void> markAllAsRead();
  Future<void> deleteNotification(int notificationId);
  Future<void> clearAll();
}
