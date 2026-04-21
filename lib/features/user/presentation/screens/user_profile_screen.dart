import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';
import 'package:sep490_mo/features/user/presentation/controllers/user_profile_controller.dart';
import 'package:sep490_mo/features/user/presentation/states/user_profile_state.dart';

class UserProfileScreen extends HookConsumerWidget {
  const UserProfileScreen({super.key});

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
          data: (state) => state.when(
            initial: () => const Loader(),
            loading: () => const Loader(),
            loaded: (user) => RefreshIndicator(
              onRefresh: controller.refresh,
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  // ─── Header Banner ──────────────────────────────────────
                  SliverAppBar(
                    expandedHeight: 160,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(user.displayName ?? user.username),
                      background: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Theme.of(context).colorScheme.primary,
                              Theme.of(
                                context,
                              ).colorScheme.primary.withValues(alpha: 0.6),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // ─── Avatar ───────────────────────────────────────────
                  SliverToBoxAdapter(
                    child: Center(
                      child: Transform.translate(
                        offset: const Offset(0, -50),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Theme.of(context).colorScheme.surface,
                              width: 4,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.1),
                                blurRadius: 8,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.primaryContainer,
                            backgroundImage: user.avatarUrl != null
                                ? NetworkImage(user.avatarUrl!)
                                : null,
                            child: user.avatarUrl == null
                                ? Text(
                                    (user.displayName ?? user.username)[0]
                                        .toUpperCase(),
                                    style: const TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                                : null,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // ─── User Info ────────────────────────────────────────
                  SliverToBoxAdapter(
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

                          // Bookmarks Button
                          ListTile(
                            leading: const Icon(Icons.bookmark_outline),
                            title: const Text('My Bookmarks'),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () => const BookmarkRoute().push(context),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color: Theme.of(context).colorScheme.outlineVariant,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),

                          // VTuber Application Button
                          ListTile(
                            leading: const Icon(Icons.video_camera_front_outlined),
                            title: const Text('VTuber Application'),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () => const VtuberApplicationRoute().push(context),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color: Theme.of(context).colorScheme.outlineVariant,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),

                          // Stats Section
                          Text(
                            'Statistics',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: _buildStatCard(
                                  icon: Icons.star_outline,
                                  label: 'Points',
                                  value: user.points.toString(),
                                  context: context,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: _buildStatCard(
                                  icon: Icons.card_giftcard_outlined,
                                  label: 'Gifts',
                                  value: user.totalReceivedGifts.toString(),
                                  context: context,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: _buildStatCard(
                                  icon: Icons.workspace_premium_outlined,
                                  label: 'Badges',
                                  value: user.totalBadges.toString(),
                                  context: context,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: _buildStatCard(
                                  icon: Icons.people_outline,
                                  label: 'Fan Hubs',
                                  value: user.totalFanHubs.toString(),
                                  context: context,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),

                          // Account Info
                          Text(
                            'Account Information',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 12),
                          _buildInfoRow(
                            icon: Icons.calendar_today_outlined,
                            label: 'Member since',
                            value: _formatDate(user.createdAt),
                            context: context,
                          ),
                          const SizedBox(height: 8),
                          _buildInfoRow(
                            icon: Icons.update_outlined,
                            label: 'Last updated',
                            value: _formatDate(user.updatedAt),
                            context: context,
                          ),
                          const SizedBox(height: 8),
                          _buildInfoRow(
                            icon: user.isActive
                                ? Icons.check_circle_outline
                                : Icons.cancel_outlined,
                            label: 'Status',
                            value: user.isActive ? 'Active' : 'Inactive',
                            context: context,
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            error: (message) =>
                ErrorBanner(message: message, onRetry: controller.refresh),
          ),
          loading: () => const Loader(),
          error: (error, stackTrace) => ErrorBanner(
            message: error.toString(),
            onRetry: controller.refresh,
          ),
        ),
      ),
    );
  }

  Widget _buildRoleChip({
    required UserRole role,
    required BuildContext context,
  }) {
    final color = switch (role) {
      UserRole.VTUBER => Colors.purple,
      UserRole.USER => Theme.of(context).colorScheme.primary,
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

  Widget _buildStatCard({
    required IconData icon,
    required String label,
    required String value,
    required BuildContext context,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 28, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: 8),
          Text(
            value,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
    required BuildContext context,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
        ),
        const SizedBox(width: 12),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
