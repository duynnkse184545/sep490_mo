import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/empty_state.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';
import 'package:sep490_mo/features/member/presentation/controllers/member_checking_controller.dart';
import 'package:sep490_mo/features/member/presentation/controllers/member_ban_controller.dart';
import 'package:sep490_mo/features/member/presentation/screens/member_detail_screen.dart';
import 'package:sep490_mo/features/member/presentation/states/member_ban_state.dart';

class BannedMemberScreen extends HookConsumerWidget {
  final int fanHubId;

  const BannedMemberScreen({super.key, required this.fanHubId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final banAsync = ref.watch(
      memberBanControllerProvider(fanHubId: fanHubId),
    );
    final controller = ref.read(
      memberBanControllerProvider(fanHubId: fanHubId).notifier,
    );
    final scrollController = useScrollController();

    useEffect(() {
      void onScroll() {
        if (!scrollController.hasClients) return;
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200) {
          controller.loadMore();
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    final currentUserRoleAsync = ref.watch(memberCheckingControllerProvider(fanHubId: fanHubId));
    final canRevoke = currentUserRoleAsync.when(
      data: (checking) => 
          checking.roleInHub == MemberRole.vtuber ||
          checking.roleInHub == MemberRole.moderator,
      loading: () => false,
      error: (_, _) => false,
    );

    return banAsync.when(
      data: (banState) => banState.when(
        ready: (members) => RefreshIndicator(
          onRefresh: controller.refresh,
          child: ListView.builder(
            controller: scrollController,
            padding: const EdgeInsets.all(8),
            itemCount: members.length,
            itemBuilder: (context, index) {
              return _BannedMemberTile(
                member: members[index],
                canRevoke: canRevoke,
                onRevokeBan: (banId, reason) => _showRevokeDialog(
                  context, 
                  controller, 
                  members[index], 
                  banId, 
                  reason,
                ),
              );
            },
          ),
        ),
        loadingMore: (members) => ListView.builder(
          controller: scrollController,
          padding: const EdgeInsets.all(8),
          itemCount: members.length + 1,
          itemBuilder: (context, index) {
            if (index == members.length) {
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(child: CircularProgressIndicator()),
              );
            }
            return _BannedMemberTile(
              member: members[index],
              canRevoke: canRevoke,
              onRevokeBan: (banId, reason) => _showRevokeDialog(
                context, 
                controller, 
                members[index], 
                banId, 
                reason,
              ),
            );
          },
        ),
        empty: () => const EmptyState(
          message: 'No banned members',
          icon: Icons.person_off_outlined,
        ),
      ),
      loading: () => const Loader(),
      error: (error, stackTrace) => ErrorBanner(
        message: error.toString(),
        onRetry: controller.refresh,
      ),
    );
  }

  Future<void> _showRevokeDialog(
    BuildContext context,
    MemberBanController controller,
    MemberWithBans member,
    int banId,
    String banReason,
  ) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Revoke Ban'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Revoke this ban for ${member.displayName ?? member.username}?'),
            const SizedBox(height: 8),
            Text(
              'Ban Reason: $banReason',
              style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
            onPressed: () {
              controller.unbanMember(banId);
              Navigator.of(context).pop();
            },
            child: const Text('Revoke'),
          ),
        ],
      ),
    );
  }
}

class _BannedMemberTile extends HookWidget {
  final MemberWithBans member;
  final bool canRevoke;
  final void Function(int banId, String reason) onRevokeBan;

  const _BannedMemberTile({
    required this.member,
    required this.canRevoke,
    required this.onRevokeBan,
  });

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);
    final activeBans = member.bans.where((b) => b.isActive).toList();

    return Container(
      margin: const EdgeInsets.only(bottom: 12, left: 4, right: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(
            color: AppColors.border,
            offset: Offset(6, 6),
            blurRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 18,
              backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
              backgroundImage: member.avatarUrl != null
                  ? NetworkImage(member.avatarUrl!)
                  : null,
              child: member.avatarUrl == null
                  ? Text(
                      (member.displayName ?? member.username ?? 'M')[0].toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.primary),
                    )
                  : null,
            ),
            title: Text(
              member.displayName ?? member.username ?? 'Unknown',
              style: const TextStyle(fontWeight: FontWeight.w900, color: Color(0xFF323232)),
            ),
            subtitle: Text(
              '${activeBans.length} active ban(s)',
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            trailing: Icon(
              isExpanded.value ? Icons.expand_less : Icons.expand_more,
              color: AppColors.border,
            ),
            onTap: () => isExpanded.value = !isExpanded.value,
          ),
          if (isExpanded.value) ...[
            const Divider(height: 1, color: Colors.black12),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: activeBans.length,
              separatorBuilder: (_, _) => const Divider(height: 1, color: Colors.black12),
              itemBuilder: (context, index) {
                final ban = activeBans[index];
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.red[100],
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: Colors.red, width: 1),
                            ),
                            child: Text(
                              ban.banType.name.toUpperCase(),
                              style: const TextStyle(
                                fontSize: 10, 
                                fontWeight: FontWeight.w900,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          const Spacer(),
                          if(ban.bannedUntil != null)
                          Text(
                            'Until: ${DateFormat('MMM dd, yyyy').format(ban.bannedUntil!)}',
                            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: Color(0xFF323232)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Reason: ${ban.reason}',
                        style: const TextStyle(fontSize: 13, color: Color(0xFF323232)),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'By: ${ban.bannedByDisplayName}',
                        style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                      ),
                      if (canRevoke) ...[
                        const SizedBox(height: 12),
                        _buildSmallRetroButton(
                          label: 'REVOKE BAN',
                          icon: Icons.undo,
                          color: Colors.white,
                          textColor: Colors.red,
                          onTap: () => onRevokeBan(ban.banId, ban.reason),
                        ),
                      ],
                    ],
                  ),
                );
              },
            ),
            const Divider(height: 1, color: Colors.black12),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => MemberDetailScreen(
                      fanHubMemberId: member.resolvedId,
                    ),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.info_outline, size: 14, color: AppColors.primary),
                    SizedBox(width: 8),
                    Text(
                      'View Full Member Details',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.primary),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSmallRetroButton({
    required String label,
    required IconData icon,
    required Color color,
    required Color textColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: AppColors.border, width: 1.5),
          borderRadius: BorderRadius.circular(6),
          boxShadow: const [
            BoxShadow(color: AppColors.border, offset: Offset(2, 2)),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: textColor),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w900,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
