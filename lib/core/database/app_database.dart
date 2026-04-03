import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sep490_mo/core/database/daos/user_dao.dart';



part 'app_database.g.dart';

/// Current user table for caching (single row)
@DataClassName('CurrentUserEntity')
class CurrentUser extends Table {
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
  DateTimeColumn get cachedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

/// Workspaces table for caching
@DataClassName('WorkspaceEntity')
class Workspaces extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  TextColumn get ownerId => text()();
  TextColumn get inviteCode => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [CurrentUser], daos: [UserDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

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
