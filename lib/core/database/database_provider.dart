import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/user/data/datasources/local/user_dao.dart';
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
