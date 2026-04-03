import 'dart:convert';
import 'package:sep490_mo/core/database/app_database.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';

extension CurrentUserEntityExtension on CurrentUserEntity {
  User toDomain() {
    return User(
      userId: userId,
      username: username,
      email: email,
      displayName: displayName,
      avatarUrl: avatarUrl,
      frameUrl: frameUrl,
      bio: bio,
      role: UserRole.values.firstWhere((e) => e.name == role),
      points: points,
      paidPoints: paidPoints,
      translateLanguage: translateLanguage,
      createdAt: createdAt,
      updatedAt: updatedAt,
      isActive: isActive,
      totalBadges: totalBadges,
      totalFanHubs: totalFanHubs,
      totalReceivedGifts: totalReceivedGifts,
      displayBadges: displayBadges != null
          ? jsonDecode(displayBadges!) as List<dynamic>?
          : null,
      allBadges: allBadges != null
          ? jsonDecode(allBadges!) as List<dynamic>?
          : null,
    );
  }
}
