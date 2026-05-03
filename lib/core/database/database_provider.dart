import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/database/daos/notification_dao.dart';
import 'package:sep490_mo/core/database/daos/post_dao.dart';
import 'package:sep490_mo/core/database/daos/user_dao.dart';
import 'app_database.dart';


part 'database_provider.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
}

@riverpod
UserDao userDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return db.userDao;
}

@riverpod
PostDao postDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return db.postDao;
}

@riverpod
NotificationDao notificationDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return db.notificationDao;
}
