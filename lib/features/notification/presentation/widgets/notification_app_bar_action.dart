import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/features/notification/presentation/controllers/notification_controller.dart';
import 'package:sep490_mo/features/notification/presentation/states/notification_state.dart';
import 'package:sep490_mo/features/notification/presentation/widgets/notification_popup_content.dart';

class NotificationAppBarAction extends ConsumerWidget {
  const NotificationAppBarAction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationAsync = ref.watch(notificationControllerProvider);
    
    final unreadCount = notificationAsync.maybeWhen(
      data: (state) => state.maybeWhen(
        ready: (notifications) => notifications.where((n) => !n.isRead).length,
        orElse: () => 0,
      ),
      orElse: () => 0,
    );

    return PopupMenuButton(
      offset: const Offset(0, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      icon: Stack(
        children: [
          const Icon(Icons.notifications_none_outlined, color: Colors.black),
          if (unreadCount > 0)
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1.5),
                ),
                constraints: const BoxConstraints(
                  minWidth: 12,
                  minHeight: 12,
                ),
                child: Text(
                  unreadCount > 9 ? '9+' : '$unreadCount',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
      itemBuilder: (context) => [
        const PopupMenuItem(
          enabled: false,
          child: NotificationPopupContent(),
        ),
      ],
    );
  }
}
