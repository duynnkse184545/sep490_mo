// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dao.dart';

// ignore_for_file: type=lint
mixin _$NotificationDaoMixin on DatabaseAccessor<AppDatabase> {
  $NotificationTblTable get notificationTbl => attachedDatabase.notificationTbl;
  NotificationDaoManager get managers => NotificationDaoManager(this);
}

class NotificationDaoManager {
  final _$NotificationDaoMixin _db;
  NotificationDaoManager(this._db);
  $$NotificationTblTableTableManager get notificationTbl =>
      $$NotificationTblTableTableManager(
        _db.attachedDatabase,
        _db.notificationTbl,
      );
}
