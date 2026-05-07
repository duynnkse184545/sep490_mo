import 'package:flutter/material.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

class FanHubMinimalCard extends StatelessWidget {
  final FanHub fanHub;

  const FanHubMinimalCard({super.key, required this.fanHub});

  @override
  Widget build(BuildContext context) {
    final themeColor = fanHub.themeColor != null && fanHub.themeColor != 'string'
        ? Color(int.parse(fanHub.themeColor!.replaceFirst('#', '0xff')))
        : Theme.of(context).colorScheme.primary;

    return GestureDetector(
      onTap: () {
        FanHubDetailRoute(
          subdomain: fanHub.subdomain,
          fanHubId: fanHub.fanHubId,
        ).push(context);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.border.withValues(alpha: 0.1), width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              offset: const Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: themeColor, width: 2),
              ),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: themeColor.withValues(alpha: 0.2),
                backgroundImage: fanHub.avatarUrl != null ? NetworkImage(fanHub.avatarUrl!) : null,
                child: fanHub.avatarUrl == null
                    ? Text(
                        fanHub.hubName[0].toUpperCase(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: themeColor,
                        ),
                      )
                    : null,
              ),
            ),
            const SizedBox(width: 12),
            // Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fanHub.hubName,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF1A1A1A),
                      letterSpacing: 0.5,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'by ${fanHub.ownerDisplayName}',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: themeColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.people_outline, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Text(
                        '${fanHub.memberCount} members',
                        style: const TextStyle(fontSize: 10, color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      if (fanHub.isPrivate)
                        const Icon(Icons.lock_outline, size: 14, color: Colors.grey),
                      if (fanHub.requiresApproval) ...[
                        const SizedBox(width: 4),
                        const Icon(Icons.pending_outlined, size: 14, color: Colors.grey),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
