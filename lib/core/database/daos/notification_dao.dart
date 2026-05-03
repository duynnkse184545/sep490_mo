import 'package:drift/drift.dart';
import 'package:sep490_mo/core/database/app_database.dart';

part 'notification_dao.g.dart';

@DriftAccessor(tables: [NotificationTbl])
class NotificationDao extends DatabaseAccessor<AppDatabase> with _$NotificationDaoMixin {
  NotificationDao(super.attachedDatabase);

  Future<void> cacheNotifications(List<NotificationEntity> notifications) async {
    await batch((b) {
      b.insertAllOnConflictUpdate(notificationTbl, notifications);
    });
  }

  Stream<List<NotificationEntity>> watchNotifications({int limit = 50, int offset = 0}) {
    return (select(notificationTbl)
          ..orderBy([(t) => OrderingTerm.desc(t.createdAt)])
          ..limit(limit, offset: offset))
        .watch();
  }

  Future<void> markAsRead(int notificationId) {
    return (update(notificationTbl)..where((t) => t.id.equals(notificationId)))
        .write(const NotificationTblCompanion(isRead: Value(true)));
  }

  Future<void> markAllAsRead() {
    return update(notificationTbl).write(const NotificationTblCompanion(isRead: Value(true)));
  }

  Future<void> deleteNotification(int notificationId) {
    return (delete(notificationTbl)..where((t) => t.id.equals(notificationId))).go();
  }

  Future<void> clearAll() {
    return delete(notificationTbl).go();
  }
}
