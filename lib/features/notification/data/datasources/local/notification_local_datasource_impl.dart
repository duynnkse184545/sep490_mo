import 'dart:convert';
import 'package:sep490_mo/core/database/app_database.dart';
import 'package:sep490_mo/core/database/daos/notification_dao.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/features/notification/data/datasources/local/notification_local_datasource.dart';
import 'package:sep490_mo/features/notification/data/models/notification_models.dart';

class NotificationLocalDataSourceImpl implements NotificationLocalDataSource {
  final NotificationDao _notificationDao;

  NotificationLocalDataSourceImpl(this._notificationDao);

  @override
  Future<void> cacheNotifications(List<Notification> notifications) async {
    try {
      final entities = notifications
          .map(
            (n) => NotificationEntity(
              id: n.id,
              notificationData: jsonEncode(n.toJson()),
              isRead: n.isRead,
              createdAt: n.createdAt,
              cachedAt: DateTime.now(),
            ),
          )
          .toList();

      await _notificationDao.cacheNotifications(entities);
    } catch (e) {
      throw CacheException('Failed to cache notifications: $e');
    }
  }

  @override
  Stream<List<Notification>> watchNotifications({int limit = 50, int offset = 0}) {
    return _notificationDao
        .watchNotifications(limit: limit, offset: offset)
        .map(_parseEntities)
        .handleError(
          (e) => throw CacheException('Failed to watch notifications: $e'),
        );
  }

  @override
  Future<void> markAsRead(int notificationId) async {
    try {
      await _notificationDao.markAsRead(notificationId);
    } catch (e) {
      throw CacheException('Failed to mark notification as read: $e');
    }
  }

  @override
  Future<void> markAllAsRead() async {
    try {
      await _notificationDao.markAllAsRead();
    } catch (e) {
      throw CacheException('Failed to mark all notifications as read: $e');
    }
  }

  @override
  Future<void> deleteNotification(int notificationId) async {
    try {
      await _notificationDao.deleteNotification(notificationId);
    } catch (e) {
      throw CacheException('Failed to delete notification: $e');
    }
  }

  @override
  Future<void> clearAll() async {
    try {
      await _notificationDao.clearAll();
    } catch (e) {
      throw CacheException('Failed to clear notifications: $e');
    }
  }

  List<Notification> _parseEntities(List<NotificationEntity> entities) {
    return entities.expand<Notification>((entity) {
      try {
        return [Notification.fromJson(jsonDecode(entity.notificationData))];
      } catch (e) {
        return [];
      }
    }).toList();
  }
}
