import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/fanhub/presentation/controllers/fanhub_analytics_controller.dart';

class FanHubAnalyticsScreen extends ConsumerWidget {
  final int fanHubId;
  final bool showAppBar;

  const FanHubAnalyticsScreen({
    super.key,
    required this.fanHubId,
    this.showAppBar = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final analyticsAsync = ref.watch(fanHubAnalyticsControllerProvider(fanHubId: fanHubId));
    final controller = ref.read(fanHubAnalyticsControllerProvider(fanHubId: fanHubId).notifier);

    final content = analyticsAsync.when(
      loading: () => const Loader(),
      error: (error, stack) => ErrorBanner(
        message: error.toString(),
        onRetry: controller.refresh,
      ),
      data: (analytics) => RefreshIndicator(
        onRefresh: controller.refresh,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Row(
              children: [
                Expanded(child: _buildStatCard(context, 'Total Posts', analytics.totalPosts.toString(), Icons.edit_note, Colors.blue)),
                const SizedBox(width: 12),
                Expanded(child: _buildStatCard(context, 'Total Members', analytics.totalJoinedMembers.toString(), Icons.people, Colors.green)),
              ],
            ),
            const SizedBox(height: 12),
            _buildStatCard(context, 'Total Strikes', analytics.totalStrikes.toString(), Icons.warning_amber, Colors.red, isFullWidth: true),
            const SizedBox(height: 32),
            const Row(
              children: [
                Icon(Icons.workspace_premium, color: Colors.amber, size: 24),
                SizedBox(width: 8),
                Text('Top Members', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
              ],
            ),
            const SizedBox(height: 16),
            if (analytics.topMembers.isEmpty)
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text('No members found.', style: TextStyle(color: Colors.grey)),
                ),
              )
            else
              ...analytics.topMembers.asMap().entries.map((entry) {
                final index = entry.key;
                final member = entry.value;
                return _buildMemberTile(context, member, index);
              }),
          ],
        ),
      ),
    );

    if (!showAppBar) return content;

    return Scaffold(
      appBar: AppBar(title: const Text('FanHub Analytics')),
      body: content,
    );
  }

  Widget _buildStatCard(BuildContext context, String label, String value, IconData icon, Color color, {bool isFullWidth = false}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(
            color: AppColors.border,
            offset: Offset(4, 4),
            blurRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: isFullWidth ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: color, size: 24),
              if (isFullWidth) const SizedBox(width: 8),
              if (isFullWidth) Text(label, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            value,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: Color(0xFF323232)),
          ),
          if (!isFullWidth) const SizedBox(height: 4),
          if (!isFullWidth)
            Text(
              label,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
            ),
        ],
      ),
    );
  }

  Widget _buildMemberTile(BuildContext context, dynamic member, int index) {
    Color rankColor;
    if (index == 0) {
      rankColor = Colors.amber;
    } else if (index == 1) {
      rankColor = Colors.blueGrey;
    }
    else if (index == 2) {
      rankColor = Colors.brown.shade300;
    }
    else {
      rankColor = Colors.grey.shade300;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12, left: 4, right: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(
            color: AppColors.border,
            offset: Offset(4, 4),
            blurRadius: 0,
          ),
        ],
      ),
      child: ListTile(
        leading: Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
              backgroundImage: member.avatarUrl != null ? NetworkImage(member.avatarUrl!) : null,
              child: member.avatarUrl == null
                  ? Text(
                      (member.displayName ?? member.username ?? '?')[0].toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
                    )
                  : null,
            ),
            Positioned(
              bottom: -4,
              right: -4,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: rankColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1.5),
                ),
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          member.displayName ?? member.username ?? 'Unknown',
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15, color: Color(0xFF323232)),
        ),
        subtitle: Text(
          "@${member.username ?? 'unknown'}",
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.primary),
          ),
          child: Text(
            '${member.fanHubScore} pts',
            style: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w900,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
