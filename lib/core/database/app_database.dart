import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sep490_mo/core/database/daos/notification_dao.dart';
import 'package:sep490_mo/core/database/daos/post_dao.dart';
import 'package:sep490_mo/core/database/daos/user_dao.dart';

part 'app_database.g.dart';

/// Current user table for caching (single row)
@DataClassName('CurrentUserEntity')
class CurrentUserTbl extends Table {
  IntColumn get id => integer().withDefault(const Constant(1))();
  IntColumn get userId => integer()();
  TextColumn get username => text()();
  TextColumn get email => text()();
  TextColumn get displayName => text().nullable()();
  TextColumn get avatarUrl => text().nullable()();
  TextColumn get frameUrl => text().nullable()();
  TextColumn get bio => text()();
  TextColumn get role => text()();
  IntColumn get points => integer()();
  IntColumn get paidPoints => integer()();
  TextColumn get translateLanguage => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get isActive => boolean()();
  IntColumn get totalBadges => integer()();
  IntColumn get totalFanHubs => integer()();
  IntColumn get totalReceivedGifts => integer()();
  TextColumn get displayBadges => text().nullable()();
  TextColumn get allBadges => text().nullable()();
  TextColumn get joinedFanHubs => text().nullable()();
  TextColumn get oshi => text().nullable()();
  DateTimeColumn get cachedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

/// Post cache table for storing posts locally
@DataClassName('PostEntity')
class PostTbl extends Table {
  IntColumn get postId => integer()();
  IntColumn get fanHubId => integer()();
  ///When would you normalize?
  ///      * If you need to query inside the cache (e.g., "Get all VIDEO posts").
  ///      * If the cache grows to thousands of rows and you need to optimize storage.
  TextColumn get postData => text()(); // Store full post JSON
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get cachedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {postId};
}

/// Notification cache table
@DataClassName('NotificationEntity')
class NotificationTbl extends Table {
  IntColumn get id => integer()();
  TextColumn get notificationData => text()(); // Store full notification JSON
  BoolColumn get isRead => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get cachedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(
  tables: [CurrentUserTbl, PostTbl, NotificationTbl],
  daos: [UserDao, PostDao, NotificationDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();
      },
      onUpgrade: (m, from, to) async {
        if (from < 2) {
          // Add migrations for older versions if necessary
        }
        if (from < 3) {
          // We added NotificationTbl in version 3
          await m.createTable(notificationTbl);
        }
        if (from < 4) {
          // Added joinedFanHubs and oshi to CurrentUserTbl
          await m.addColumn(currentUserTbl, currentUserTbl.joinedFanHubs);
          await m.addColumn(currentUserTbl, currentUserTbl.oshi);
        }
      },
    );
  }

  /// Clear all tables
  Future<void> clearAllTables() async {
    await transaction(() async {
      for (final table in allTables) {
        await delete(table).go();
      }
    });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
    return NativeDatabase(file);
  });
}
