import 'package:drift/drift.dart';
import 'package:sep490_mo/core/database/app_database.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';
import 'dart:convert';

part 'user_dao.g.dart';

@DriftAccessor(tables: [CurrentUserTbl])
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
  UserDao(super.attachedDatabase);

  /// Get the cached current user (single row, no ID needed)
  Future<User?> getCachedUser() async {
    final entity = await select(currentUserTbl).getSingleOrNull();
    if (entity == null) return null;

    return User(
      userId: entity.userId,
      username: entity.username,
      email: entity.email,
      displayName: entity.displayName,
      avatarUrl: entity.avatarUrl,
      frameUrl: entity.frameUrl,
      bio: entity.bio,
      role: UserRole.values.firstWhere((e) => e.name == entity.role),
      points: entity.points,
      paidPoints: entity.paidPoints,
      translateLanguage: entity.translateLanguage,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      isActive: entity.isActive,
      totalBadges: entity.totalBadges,
      totalFanHubs: entity.totalFanHubs,
      totalReceivedGifts: entity.totalReceivedGifts,
      displayBadges: entity.displayBadges != null
          ? jsonDecode(entity.displayBadges!) as List<dynamic>?
          : null,
      allBadges: entity.allBadges != null
          ? jsonDecode(entity.allBadges!) as List<dynamic>?
          : null,
    );
  }

  /// Cache user (always overwrites the single row)
  Future<void> cacheUser(User user) async {
    await into(currentUserTbl).insertOnConflictUpdate(
      CurrentUserTblCompanion(
        id: const Value(1),
        userId: Value(user.userId),
        username: Value(user.username),
        email: Value(user.email),
        displayName: Value(user.displayName),
        avatarUrl: Value(user.avatarUrl),
        frameUrl: Value(user.frameUrl),
        bio: Value(user.bio),
        role: Value(user.role.name),
        points: Value(user.points),
        paidPoints: Value(user.paidPoints),
        translateLanguage: Value(user.translateLanguage),
        createdAt: Value(user.createdAt),
        updatedAt: Value(user.updatedAt),
        isActive: Value(user.isActive),
        totalBadges: Value(user.totalBadges),
        totalFanHubs: Value(user.totalFanHubs),
        totalReceivedGifts: Value(user.totalReceivedGifts),
        displayBadges: Value(
            user.displayBadges != null ? jsonEncode(user.displayBadges) : null),
        allBadges:
            Value(user.allBadges != null ? jsonEncode(user.allBadges) : null),
        cachedAt: Value(DateTime.now()),
      ),
    );
  }

  /// Clear the cached user
  Future<void> clearCache() async {
    await delete(currentUserTbl).go();
  }
}
