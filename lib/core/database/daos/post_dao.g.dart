// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dao.dart';

// ignore_for_file: type=lint
mixin _$PostDaoMixin on DatabaseAccessor<AppDatabase> {
  $PostTblTable get postTbl => attachedDatabase.postTbl;
  PostDaoManager get managers => PostDaoManager(this);
}

class PostDaoManager {
  final _$PostDaoMixin _db;
  PostDaoManager(this._db);
  $$PostTblTableTableManager get postTbl =>
      $$PostTblTableTableManager(_db.attachedDatabase, _db.postTbl);
}
