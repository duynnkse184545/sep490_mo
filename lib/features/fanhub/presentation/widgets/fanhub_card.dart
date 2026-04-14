import 'package:flutter/material.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

class FanHubCard extends StatelessWidget {
  final FanHub fanHub;

  const FanHubCard({super.key, required this.fanHub});

  @override
  Widget build(BuildContext context) {
    final themeColor = fanHub.themeColor != null
        ? Color(int.parse(fanHub.themeColor!.replaceFirst('#', '0xff')))
        : Theme.of(context).colorScheme.primary;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          FanHubDetailRoute(
            subdomain: fanHub.subdomain,
            fanHubId: fanHub.fanHubId,
          ).push(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner/Header area
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: themeColor.withValues(alpha: 0.3),
                image: fanHub.bannerUrl != null
                    ? DecorationImage(
                        image: NetworkImage(fanHub.bannerUrl!),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              child: Stack(
                children: [
                  // Avatar
                  Positioned(
                    left: 16,
                    bottom: -25,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.surface,
                          width: 3,
                        ),
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
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hub name
                  Text(
                    fanHub.hubName,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),

                  // Owner
                  Text(
                    'by ${fanHub.ownerDisplayName}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.7),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Description
                  if (fanHub.description != null &&
                      fanHub.description!.isNotEmpty) ...[
                    Text(
                      fanHub.description!,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                  ],

                  // Categories
                  if (fanHub.categories.isNotEmpty) ...[
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: fanHub.categories.take(3).map((category) {
                        return Chip(
                          label: Text(
                            category,
                            style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          backgroundColor: themeColor.withValues(alpha: 0.2),
                          padding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 8),
                  ],

                  // Member count & privacy indicators
                  Row(
                    children: [
                      Icon(
                        Icons.people_outline,
                        size: 16,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.6),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${fanHub.memberCount} members',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.6),
                        ),
                      ),
                      const Spacer(),
                      if (fanHub.isPrivate) ...[
                        Icon(
                          Icons.lock_outline,
                          size: 16,
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.6),
                        ),
                      ],
                      if (fanHub.requiresApproval) ...[
                        const SizedBox(width: 8),
                        Icon(
                          Icons.pending_outlined,
                          size: 16,
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.6),
                        ),
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
