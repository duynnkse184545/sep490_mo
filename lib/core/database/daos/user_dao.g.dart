// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dao.dart';

// ignore_for_file: type=lint
mixin _$UserDaoMixin on DatabaseAccessor<AppDatabase> {
  $CurrentUserTblTable get currentUserTbl => attachedDatabase.currentUserTbl;
  UserDaoManager get managers => UserDaoManager(this);
}

class UserDaoManager {
  final _$UserDaoMixin _db;
  UserDaoManager(this._db);
  $$CurrentUserTblTableTableManager get currentUserTbl =>
      $$CurrentUserTblTableTableManager(
        _db.attachedDatabase,
        _db.currentUserTbl,
      );
}
