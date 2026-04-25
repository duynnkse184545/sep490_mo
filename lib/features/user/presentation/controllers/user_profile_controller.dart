import 'dart:io';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';
import 'package:sep490_mo/features/user/data/providers/user_providers.dart';
import 'package:sep490_mo/features/user/presentation/states/user_profile_state.dart';

part 'user_profile_controller.g.dart';

@riverpod
class UserProfileController extends _$UserProfileController {
  @override
  Future<UserProfileState> build() async {
    final userResult = await ref.read(userRepositoryProvider).getCurrentUser().run();

    return userResult.fold(
      (failure) => throw failure,
      (user) => UserProfileState.loaded(user),
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    ref.invalidateSelf();
  }

  Future<void> updateProfile(UpdateProfileRequest request) async {
    final result = await ref.read(userRepositoryProvider).updateProfile(request).run();
    result.fold(
      (failure) => null, // Handle error
      (_) => refresh(),
    );
  }

  Future<void> updateAvatarFrame({String? frameName, required File avatarFile}) async {
    state = const AsyncValue.loading();
    final result = await ref.read(userRepositoryProvider).updateAvatarFrame(
      frameName: frameName,
      avatarFile: avatarFile,
    ).run();
    
    result.fold(
      (failure) => null, // Handle error
      (_) => refresh(),
    );
  }

  Future<void> setOshi(String oshiUsername) async {
    final result = await ref.read(userRepositoryProvider).setOshi(oshiUsername).run();
    result.fold(
      (failure) => null, // Handle error
      (_) => refresh(),
    );
  }

  Future<void> selectDisplayBadges(List<int> userBadgeIds) async {
    final result = await ref.read(userRepositoryProvider).selectDisplayBadges(userBadgeIds).run();
    result.fold(
      (failure) => null, // Handle error
      (_) => refresh(),
    );
  }

  // Helper providers can be used for Frames, Badges and Daily Missions
  // but we can also put them here if we want a unified profile state
}

@riverpod
Future<List<Badge>> userBadges(Ref ref, int userId) async {
  final result = await ref.read(userRepositoryProvider).getBadges(userId).run();
  return result.fold((failure) => throw failure, (badges) => badges);
}

@riverpod
Future<List<Frame>> availableFrames(Ref ref) async {
  final result = await ref.read(userRepositoryProvider).getFrames().run();
  return result.fold((failure) => throw failure, (frames) => frames);
}

@riverpod
Future<List<Frame>> myItems(Ref ref) async {
  final result = await ref.read(userRepositoryProvider).getMyItems().run();
  return result.fold((failure) => throw failure, (items) => items);
}

@riverpod
Future<DailyMission> dailyMission(Ref ref) async {
  final result = await ref.read(userRepositoryProvider).getDailyMission().run();
  return result.fold((failure) => throw failure, (mission) => mission);
}
