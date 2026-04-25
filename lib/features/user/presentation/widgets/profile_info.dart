import 'package:flutter/material.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';

class ProfileInfo extends StatelessWidget {
  final User user;
  const ProfileInfo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display Name
            Text(
              user.displayName ?? 'Unknown',
              style: Theme.of(context).textTheme.headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),

            // Username
            Text(
              '@${user.username}',
              style: Theme.of(context).textTheme.bodyMedium
                  ?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 4),

            // Email
            Text(
              user.email,
              style: Theme.of(context).textTheme.bodyMedium
                  ?.copyWith(
                color: Theme.of(context).colorScheme.onSurface
                    .withValues(alpha: 0.6),
              ),
            ),
            const SizedBox(height: 16),

            // Role Badge
            Row(
              children: [
                _buildRoleChip(role: user.role, context: context),
                const SizedBox(width: 12),
                _buildPointsChip(
                  points: user.points,
                  context: context,
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Bio
            if (user.bio.isNotEmpty) ...[
              Text(
                'Bio',
                style: Theme.of(context).textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                user.bio,
                style: Theme.of(context).textTheme.bodyMedium
                    ?.copyWith(
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface
                      .withValues(alpha: 0.8),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildRoleChip({
    required UserRole role,
    required BuildContext context,
  }) {
    final color = switch (role) {
      UserRole.vtuber => Colors.purple,
      UserRole.user => Theme.of(context).colorScheme.primary,
    };
    return Chip(
      label: Text(
        role.name.toUpperCase(),
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
      backgroundColor: color,
      visualDensity: VisualDensity.compact,
    );
  }

  Widget _buildPointsChip({
    required int points,
    required BuildContext context,
  }) {
    return Chip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.star, size: 16, color: Colors.amber),
          const SizedBox(width: 4),
          Text('$points pts', style: const TextStyle(fontSize: 12)),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      visualDensity: VisualDensity.compact,
    );
  }
}
