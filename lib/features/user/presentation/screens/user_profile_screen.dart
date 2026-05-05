import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/auth/presentation/controllers/auth_controller.dart';
import 'package:sep490_mo/features/user/presentation/controllers/user_profile_controller.dart';
import 'package:sep490_mo/features/user/presentation/states/user_profile_state.dart';
import 'package:sep490_mo/features/user/presentation/widgets/profile_header.dart';
import 'package:sep490_mo/features/user/presentation/widgets/profile_info.dart';
import 'package:sep490_mo/features/user/presentation/widgets/profile_stats.dart';
import 'package:sep490_mo/features/user/presentation/widgets/profile_badges.dart';

class UserProfileScreen extends HookConsumerWidget {
  final Widget? logoutButton;
  const UserProfileScreen({super.key, this.logoutButton});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(userProfileControllerProvider);
    final controller = ref.read(userProfileControllerProvider.notifier);
    
    final picker = useMemoized(() => ImagePicker());

    Future<void> pickAvatar() async {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        controller.updateAvatarFrame(avatarPath: pickedFile.path);
      }
    }

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: profileAsync.when(
        loading: () => const Loader(),
        error: (error, stackTrace) => ErrorBanner(
          message: error.toString(),
          onRetry: controller.refresh,
        ),
        data: (state) => state.when(
          loaded: (user) => RefreshIndicator(
            onRefresh: controller.refresh,
            child: Stack(
              children: [
                ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: [
                    ProfileHeader(
                      user: user,
                      onEdit: pickAvatar,
                    ),
                    const SizedBox(height: 8),
                    ProfileStats(user: user),
                    ProfileInfo(user: user),
                    ProfileBadges(userId: user.userId),
                    const SizedBox(height: 40),
                  ],
                ),
                // Top Right More Actions
                Positioned(
                  top: 16,
                  right: 16,
                  child: _buildMoreActions(context, ref),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMoreActions(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(color: AppColors.border, offset: Offset(3, 3)),
        ],
      ),
      child: PopupMenuButton<String>(
        padding: EdgeInsets.zero,
        icon: const Icon(Icons.more_vert, color: Colors.black),
        onSelected: (value) => _handleMenuAction(context, ref, value),
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'bookmarks',
            child: Row(
              children: [
                Icon(Icons.bookmark_outline, size: 20),
                SizedBox(width: 12),
                Text('My Bookmarks', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const PopupMenuItem(
            value: 'vtuber_app',
            child: Row(
              children: [
                Icon(Icons.video_camera_front_outlined, size: 20),
                SizedBox(width: 12),
                Text('VTuber Application', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const PopupMenuDivider(),
          const PopupMenuItem(
            value: 'settings',
            child: Row(
              children: [
                Icon(Icons.settings_outlined, size: 20),
                SizedBox(width: 12),
                Text('Settings', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const PopupMenuItem(
            value: 'logout',
            child: Row(
              children: [
                Icon(Icons.logout, size: 20, color: Colors.red),
                SizedBox(width: 12),
                Text('Logout', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleMenuAction(BuildContext context, WidgetRef ref, String action) {
    switch (action) {
      case 'bookmarks':
        const BookmarkRoute().push(context);
        break;
      case 'vtuber_app':
        const VtuberApplicationRoute().push(context);
        break;
      case 'settings':
        // TODO: Navigate to Settings
        break;
      case 'logout':
        _showLogoutDialog(context, ref);
        break;
    }
  }

  void _showLogoutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ref.read(authControllerProvider.notifier).signOut();
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Logout', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
