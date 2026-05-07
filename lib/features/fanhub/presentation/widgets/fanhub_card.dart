import 'package:flutter/material.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

class FanHubCard extends StatelessWidget {
  final FanHub fanHub;

  const FanHubCard({super.key, required this.fanHub});

  @override
  Widget build(BuildContext context) {
    final themeColor = fanHub.themeColor != null && fanHub.themeColor != 'string'
        ? Color(int.parse(fanHub.themeColor!.replaceFirst('#', '0xff')))
        : Theme.of(context).colorScheme.primary;

    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 16, right: 24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(
            color: AppColors.border,
            offset: Offset(8, 8),
            blurRadius: 0,
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          FanHubDetailRoute(
            subdomain: fanHub.subdomain,
            fanHubId: fanHub.fanHubId,
          ).push(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner/Header area with Highlights
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                color: themeColor.withValues(alpha: 0.3),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: (fanHub.highlightImgUrls.isNotEmpty)
                    ? DecorationImage(
                        image: NetworkImage(fanHub.highlightImgUrls.first),
                        fit: BoxFit.cover,
                      )
                    : (fanHub.bannerUrl != null
                        ? DecorationImage(
                            image: NetworkImage(fanHub.bannerUrl!),
                            fit: BoxFit.cover,
                          )
                        : null),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Featured Badge
                  Positioned(
                    top: 12,
                    left: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF75F00),
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: AppColors.border, width: 1),
                      ),
                      child: const Text(
                        "TOP HUB",
                        style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  // Avatar
                  Positioned(
                    left: 16,
                    bottom: -30,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.border,
                          width: 2,
                        ),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: themeColor,
                        backgroundImage: fanHub.avatarUrl != null
                            ? NetworkImage(fanHub.avatarUrl!)
                            : null,
                        child: fanHub.avatarUrl == null
                            ? Text(
                                fanHub.hubName[0].toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 36, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hub name
                  Text(
                    fanHub.hubName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: Color(0xFF323232),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),

                  // Owner
                  Text(
                    'by ${fanHub.ownerDisplayName}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Description
                  if (fanHub.description != null && fanHub.description!.isNotEmpty) ...[
                    Text(
                      fanHub.description!,
                      style: const TextStyle(fontSize: 13, color: Color(0xFF555555), height: 1.4),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                  ],

                  // Categories
                  if (fanHub.categories.isNotEmpty) ...[
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: fanHub.categories.take(3).map((category) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Text(
                            category,
                            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 12),
                  ],

                  // Member count & privacy indicators
                  Row(
                    children: [
                      const Icon(Icons.people_outline, size: 16, color: Colors.black54),
                      const SizedBox(width: 4),
                      Text(
                        '${fanHub.memberCount} members',
                        style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black54),
                      ),
                      const Spacer(),
                      if (fanHub.isPrivate)
                        const Icon(Icons.lock_outline, size: 16, color: Colors.black54),
                      if (fanHub.requiresApproval) ...[
                        const SizedBox(width: 8),
                        const Icon(Icons.pending_outlined, size: 16, color: Colors.black54),
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
