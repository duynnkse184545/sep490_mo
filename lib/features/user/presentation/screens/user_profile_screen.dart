import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/user/presentation/controllers/user_profile_controller.dart';
import 'package:sep490_mo/features/user/presentation/states/user_profile_state.dart';
import 'package:sep490_mo/features/user/presentation/widgets/profile_header.dart';
import 'package:sep490_mo/features/user/presentation/widgets/profile_info.dart';
import 'package:sep490_mo/features/user/presentation/widgets/profile_stats.dart';
import 'package:sep490_mo/features/user/presentation/widgets/profile_actions.dart';
import 'package:sep490_mo/features/user/presentation/widgets/profile_account_info.dart';
import 'package:sep490_mo/features/user/presentation/widgets/profile_badges.dart';
import 'package:sep490_mo/features/user/presentation/widgets/profile_daily_mission.dart';
import 'package:sep490_mo/features/user/presentation/widgets/profile_frames.dart';

class UserProfileScreen extends HookConsumerWidget {
  final Widget? logoutButton;
  const UserProfileScreen({super.key, this.logoutButton});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(userProfileControllerProvider);
    final controller = ref.read(userProfileControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: controller.refresh,
            tooltip: 'Refresh',
          ),
        ],
      ),
      body: SafeArea(
        child: profileAsync.when(
          loading: () => const Loader(),
          error: (error, stackTrace) => ErrorBanner(
            message: error.toString(),
            onRetry: controller.refresh,
          ),
          data: (state) => state.when(
            loaded: (user) => RefreshIndicator(
              onRefresh: controller.refresh,
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  ProfileHeader(user: user),
                  ProfileAvatar(user: user, onEdit: () {
                    // TODO: Implement edit avatar/frame
                  }),
                  ProfileInfo(user: user),
                  const ProfileDailyMission(),
                  ProfileBadges(userId: user.userId),
                  const ProfileFrames(),
                  ProfileStats(user: user),
                  ProfileActions(logoutButton: logoutButton),
                  ProfileAccountInfo(user: user),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
