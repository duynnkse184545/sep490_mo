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
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.border, width: 2),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12, width: 1)),
                ),
                child: Row(
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
                      ready: (notifications) => InkWell(
                        onTap: () => controller.markAllAsRead(),
                        child: const Text(
                          "Mark all as read",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w900,
                            color: AppColors.primary,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      orElse: () => const SizedBox.shrink(),
                    ),
                  ],
                ),
              ),

              // Content Area
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 400),
                  child: state.when(
                    ready: (notifications) => ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      shrinkWrap: true,
                      itemCount: notifications.length,
                      separatorBuilder: (_, __) => const Divider(height: 1, color: Colors.black12, indent: 60),
                      itemBuilder: (context, index) {
                        final notification = notifications[index];
                        return _NotificationItem(
                          notification: notification,
                          onTap: () => controller.markAsRead(notification.id),
                          onDelete: () => controller.deleteNotification(notification.id),
                        );
                      },
                    ),
                    loading: () => const Padding(
                      padding: EdgeInsets.all(32),
                      child: SmallLoader(),
                    ),
                    empty: () => const Padding(
                      padding: EdgeInsets.all(32),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.notifications_none, size: 48, color: Colors.grey),
                          SizedBox(height: 12),
                          Text(
                            "No new notifications ☕",
                            style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                    error: (message) => Padding(
                      padding: const EdgeInsets.all(32),
                      child: Text(
                        message,
                        style: const TextStyle(color: Colors.red, fontWeight: FontWeight.w900, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
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
      child: Container(
        color: notification.isRead ? Colors.transparent : AppColors.primary.withValues(alpha: 0.03),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: _getIconColor(notification.type).withValues(alpha: 0.1),
                border: Border.all(color: _getIconColor(notification.type).withValues(alpha: 0.3), width: 1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                _getIconData(notification.type),
                size: 16,
                color: _getIconColor(notification.type),
              ),
            ),
            const SizedBox(width: 12),
            
            // Text
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
                            color: notification.isRead ? const Color(0xFF666666) : const Color(0xFF323232),
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
                    style: const TextStyle(fontSize: 12, color: Color(0xFF555555), height: 1.4),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    _formatDate(notification.createdAt),
                    style: const TextStyle(fontSize: 10, color: Colors.grey, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),

            // Delete
            GestureDetector(
              onTap: onDelete,
              child: const Icon(Icons.close, size: 14, color: Colors.black26),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getIconData(NotificationType type) {
    return switch (type) {
      NotificationType.postLike => Icons.favorite,
      NotificationType.postComment => Icons.comment,
      NotificationType.memberReport => Icons.report_problem,
      NotificationType.postReport => Icons.flag,
      NotificationType.postApproved => Icons.verified,
      NotificationType.memberBanned => Icons.gavel,
      NotificationType.reportPostResolved => Icons.check_circle,
      NotificationType.vtuberApplicationApproved => Icons.stars,
      NotificationType.vtuberApplicationRejected => Icons.assignment_late,
      NotificationType.fanHubStrike => Icons.warning,
    };
  }

  Color _getIconColor(NotificationType type) {
    return switch (type) {
      NotificationType.postLike => Colors.red,
      NotificationType.postComment => Colors.blue,
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
    final diff = now.difference(date);
    if (diff.inMinutes < 60) return '${diff.inMinutes}m ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    return DateFormat('MMM dd').format(date);
  }
}
