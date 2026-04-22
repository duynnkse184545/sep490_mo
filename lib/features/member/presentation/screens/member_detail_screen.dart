import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/presentation/controllers/member_detail_controller.dart';
import 'package:sep490_mo/features/member/presentation/states/member_detail_state.dart';

class MemberDetailScreen extends HookConsumerWidget {
  final int fanHubMemberId;

  const MemberDetailScreen({super.key, required this.fanHubMemberId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(
      memberDetailControllerProvider(fanHubMemberId: fanHubMemberId),
    );
    final controller = ref.read(
      memberDetailControllerProvider(fanHubMemberId: fanHubMemberId).notifier,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Member Detail'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: controller.refresh,
            tooltip: 'Refresh',
          ),
        ],
      ),
      body: SafeArea(
        child: detailAsync.when(
          loading: () => const Loader(),
          error: (error, stackTrace) => ErrorBanner(
            message: error.toString(),
            onRetry: controller.refresh,
          ),
          data: (state) => state.when(
            loaded: (member) => RefreshIndicator(
              onRefresh: controller.refresh,
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  // ─── AppBar ───────────────────────────────────────────
                  SliverAppBar(
                    expandedHeight: 180,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(member.displayName ?? member.username ?? ''),
                      background: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withValues(alpha: 0.1),
                          image: member.frameUrl != null
                              ? DecorationImage(
                                  image: NetworkImage(member.frameUrl!),
                                  fit: BoxFit.cover,
                                )
                              : null,
                        ),
                      ),
                    ),
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
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            backgroundImage: member.avatarUrl != null
                                ? NetworkImage(member.avatarUrl!)
                                : null,
                            child: member.avatarUrl == null
                                ? Text(
                                    (member.displayName ??
                                            member.username ??
                                            'M')[0]
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

                  // ─── Member Info ──────────────────────────────────────
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Display name
                          Text(
                            member.displayName ?? 'Unknown',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 8),

                          // Username
                          if (member.username != null)
                            Text(
                              '@${member.username}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                            ),
                          const SizedBox(height: 8),

                          // Title
                          if (member.title != null)
                            Text(
                              member.title!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                          const SizedBox(height: 16),

                          // Stats row
                          Row(
                            children: [
                              _buildStatChip(
                                icon: Icons.workspace_premium_outlined,
                                label: 'Score: ${member.fanHubScore}',
                                context: context,
                              ),
                              const SizedBox(width: 12),
                              _buildRoleChip(
                                role: member.roleInHub,
                                context: context,
                              ),
                              if (member.status != MemberStatus.joined) ...[
                                const SizedBox(width: 12),
                                _buildStatusChip(
                                  status: member.status,
                                  context: context,
                                ),
                              ],
                            ],
                          ),
                          const SizedBox(height: 24),

                          // Hub name
                          Text(
                            'Fan Hub',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            member.hubName,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurface
                                      .withValues(alpha: 0.8),
                                ),
                          ),
                          const SizedBox(height: 24),

                          // Joined at
                          if (member.joinedAt != null)
                            Text(
                              'Joined on ${_formatDate(member.joinedAt!)}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.5),
                                  ),
                            ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
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
          color: Theme.of(context)
              .colorScheme
              .onSurface
              .withValues(alpha: 0.6),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context)
                    .colorScheme
                    .onSurface
                    .withValues(alpha: 0.6),
              ),
        ),
      ],
    );
  }

  Widget _buildRoleChip({
    required MemberRole role,
    required BuildContext context,
  }) {
    final color = switch (role) {
      MemberRole.vtuber => Colors.red,
      MemberRole.moderator => Colors.orange,
      MemberRole.member => Theme.of(context).colorScheme.primary,
    };
    return Chip(
      label: Text(
        role.name.toUpperCase(),
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
      backgroundColor: color,
      visualDensity: VisualDensity.compact,
    );
  }

  Widget _buildStatusChip({
    required MemberStatus status,
    required BuildContext context,
  }) {
    final color = switch (status) {
      MemberStatus.pending => Colors.amber,
      MemberStatus.joined => Colors.green,
      MemberStatus.rejected => Colors.red,
    };
    return Chip(
      label: Text(
        status.name.toUpperCase(),
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
      backgroundColor: color,
      visualDensity: VisualDensity.compact,
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
