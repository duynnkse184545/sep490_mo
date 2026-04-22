import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/fanhub/presentation/controllers/fanhub_detail_controller.dart';
import 'package:sep490_mo/features/fanhub/presentation/states/fanhub_detail_state.dart';

class FanHubDetailScreen extends HookConsumerWidget {
  final String subdomain;
  final Widget feedWidget;
  final Widget speedDial;

  const FanHubDetailScreen({
    super.key,
    required this.subdomain,
    required this.feedWidget,
    required this.speedDial,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(
      fanHubDetailControllerProvider(subdomain: subdomain),
    );
    final controller = ref.read(
      fanHubDetailControllerProvider(subdomain: subdomain).notifier,
    );

    return Scaffold(
      floatingActionButton: speedDial,
      body: SafeArea(
        child: detailAsync.when(
          loading: () => const Loader(),
          error: (error, stackTrace) => ErrorBanner(
            message: error.toString(),
            onRetry: controller.refresh,
          ),
          data: (state) => state.when(
            loaded: (fanHub) => RefreshIndicator(
              onRefresh: controller.refresh,
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  // ─── AppBar ───────────────────────────────────────────
                  SliverAppBar(
                    expandedHeight: 200,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(fanHub.hubName),
                      background: Container(
                        decoration: BoxDecoration(
                          color: fanHub.themeColor != null
                              ? Color(
                            int.parse(
                              fanHub.themeColor!.replaceFirst('#', '0xff'),
                            ),
                          ).withValues(alpha: 0.3)
                              : Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                          image: fanHub.bannerUrl != null
                              ? DecorationImage(
                            image: NetworkImage(fanHub.bannerUrl!),
                            fit: BoxFit.cover,
                          )
                              : null,
                        ),
                      ),
                    ),
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.refresh),
                        onPressed: controller.refresh,
                        tooltip: 'Refresh',
                      ),
                    ],
                  ),

                  // ─── Avatar ───────────────────────────────────────────
                  SliverToBoxAdapter(
                    child: Center(
                      child: Transform.translate(
                        offset: const Offset(0, -40),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Theme.of(context).colorScheme.surface,
                              width: 4,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: fanHub.themeColor != null
                                ? Color(
                              int.parse(
                                fanHub.themeColor!.replaceFirst('#', '0xff'),
                              ),
                            )
                                : Theme.of(context).colorScheme.primary,
                            backgroundImage: fanHub.avatarUrl != null
                                ? NetworkImage(fanHub.avatarUrl!)
                                : null,
                            child: fanHub.avatarUrl == null
                                ? Text(
                              fanHub.hubName[0].toUpperCase(),
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

                  // ─── Hub Info ─────────────────────────────────────────
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Hub name
                          Text(
                            fanHub.hubName,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),

                          // Subdomain
                          Text(
                            '${fanHub.subdomain}.fanhub.com',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 8),

                          // Owner info
                          Text(
                            'Created by ${fanHub.ownerDisplayName} (@${fanHub.ownerUsername})',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Stats row
                          Row(
                            children: [
                              _buildStatChip(
                                icon: Icons.people_outline,
                                label: '${fanHub.memberCount} members',
                                context: context,
                              ),
                              const SizedBox(width: 12),
                              if (fanHub.isPrivate)
                                _buildStatChip(
                                  icon: Icons.lock_outline,
                                  label: 'Private',
                                  context: context,
                                ),
                              if (fanHub.requiresApproval) ...[
                                const SizedBox(width: 12),
                                _buildStatChip(
                                  icon: Icons.pending_outlined,
                                  label: 'Approval Required',
                                  context: context,
                                ),
                              ],
                            ],
                          ),
                          const SizedBox(height: 24),

                          // Description
                          if (fanHub.description != null && fanHub.description!.isNotEmpty) ...[
                            Text(
                              'About',
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              fanHub.description!,
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
                              ),
                            ),
                            const SizedBox(height: 24),
                          ],

                          // Categories
                          if (fanHub.categories.isNotEmpty) ...[
                            Text(
                              'Categories',
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: fanHub.categories.map((category) {
                                return Chip(
                                  label: Text(
                                    category,
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.onSurface,
                                    ),
                                  ),
                                  backgroundColor: fanHub.themeColor != null
                                      ? Color(
                                    int.parse(
                                      fanHub.themeColor!.replaceFirst('#', '0xff'),
                                    ),
                                  ).withValues(alpha: 0.2)
                                      : Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                                );
                              }).toList(),
                            ),
                            const SizedBox(height: 24),
                          ],

                          // Created at
                          Text(
                            'Created on ${_formatDate(fanHub.createdAt)}',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                            ),
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),

                  // ─── Divider ──────────────────────────────────────────
                  const SliverToBoxAdapter(
                    child: Divider(height: 1),
                  ),

                  // ─── Feed (injected from post feature) ────────────────
                  SliverToBoxAdapter(
                    child: feedWidget,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatChip({
    required IconData icon,
    required String label,
    required BuildContext context,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 16,
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
