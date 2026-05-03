import 'package:flutter/material.dart' hide Notification;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/notification/data/models/notification_models.dart';
import 'package:sep490_mo/features/notification/presentation/controllers/notification_controller.dart';
import 'package:sep490_mo/features/notification/presentation/states/notification_state.dart';

class NotificationPopupContent extends ConsumerWidget {
  const NotificationPopupContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationAsync = ref.watch(notificationControllerProvider);
    final controller = ref.read(notificationControllerProvider.notifier);

    return notificationAsync.when(
      data: (state) {
        return Container(
          width: 320,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.border, width: 2),
            boxShadow: const [
              BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "NOTIFICATIONS",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.2,
                      color: Colors.grey,
                    ),
                  ),
                  state.maybeWhen(
                    ready: (notifications) => TextButton(
                      onPressed: () => controller.markAllAsRead(),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        "Mark all as read",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    orElse: () => const SizedBox.shrink(),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Content
              state.when(
                ready: (notifications) => Flexible(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: notifications.length,
                    separatorBuilder: (_, _) => const Divider(height: 24, color: Colors.black12),
                    itemBuilder: (context, index) {
                      final notification = notifications[index];
                      return _NotificationItem(
                        notification: notification,
                        onTap: () => controller.markAsRead(notification.id),
                        onDelete: () => controller.deleteNotification(notification.id),
                      );
                    },
                  ),
                ),
                loading: () => const Padding(
                  padding: EdgeInsets.all(20),
                  child: SmallLoader(),
                ),
                empty: () => const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "No new notifications ☕",
                    style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                error: (message) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    message,
                    style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      loading: () => const Center(child: SmallLoader()),
      error: (error, _) => Text('Error: $error', style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    );
  }
}

class _NotificationItem extends StatelessWidget {
  final Notification notification;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const _NotificationItem({
    required this.notification,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon based on type
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: _getIconColor(notification.type).withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              _getIconData(notification.type),
              size: 18,
              color: _getIconColor(notification.type),
            ),
          ),
          const SizedBox(width: 12),
          
          // Text content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        notification.title,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: notification.isRead ? FontWeight.bold : FontWeight.w900,
                          color: notification.isRead ? Colors.grey[700] : const Color(0xFF323232),
                        ),
                      ),
                    ),
                    if (!notification.isRead)
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  notification.message,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  _formatDate(notification.createdAt),
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Delete button
          IconButton(
            onPressed: onDelete,
            icon: const Icon(Icons.close, size: 14, color: Colors.grey),
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }

  IconData _getIconData(NotificationType type) {
    return switch (type) {
      NotificationType.postLike => Icons.favorite_border,
      NotificationType.postComment => Icons.comment_outlined,
      NotificationType.hubInvite => Icons.mail_outline,
      NotificationType.memberReport => Icons.report_problem_outlined,
      NotificationType.postReport => Icons.flag_outlined,
      NotificationType.postApproved => Icons.verified_outlined,
      NotificationType.memberBanned => Icons.gavel,
      NotificationType.reportPostResolved => Icons.check_circle_outline,
      NotificationType.vtuberApplicationApproved => Icons.stars_outlined,
      NotificationType.vtuberApplicationRejected => Icons.assignment_late_outlined,
      NotificationType.fanHubStrike => Icons.warning_amber_outlined,
    };
  }

  Color _getIconColor(NotificationType type) {
    return switch (type) {
      NotificationType.postLike => Colors.red,
      NotificationType.postComment => Colors.blue,
      NotificationType.hubInvite => Colors.green,
      NotificationType.memberReport => Colors.orange,
      NotificationType.postReport => Colors.orange,
      NotificationType.postApproved => Colors.teal,
      NotificationType.memberBanned => Colors.red[900]!,
      NotificationType.reportPostResolved => Colors.green,
      NotificationType.vtuberApplicationApproved => Colors.purple,
      NotificationType.vtuberApplicationRejected => Colors.redAccent,
      NotificationType.fanHubStrike => Colors.orange[800]!,
    };
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h ago';
    } else {
      return DateFormat('MMM dd').format(date);
    }
  }
}
