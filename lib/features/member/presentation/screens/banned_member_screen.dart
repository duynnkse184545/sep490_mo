import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
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

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: member.avatarUrl != null
                  ? NetworkImage(member.avatarUrl!)
                  : null,
              child: member.avatarUrl == null
                  ? Text(
                      (member.displayName ?? member.username ?? 'M')[0].toUpperCase(),
                    )
                  : null,
            ),
            title: Text(member.displayName ?? member.username ?? 'Unknown'),
            subtitle: Text('${activeBans.length} active ban(s)'),
            trailing: Icon(
              isExpanded.value ? Icons.expand_less : Icons.expand_more,
            ),
            onTap: () => isExpanded.value = !isExpanded.value,
          ),
          if (isExpanded.value) ...[
            const Divider(height: 1),
            Container(
              color: Colors.grey[50],
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: activeBans.length,
                separatorBuilder: (_, _) => const Divider(height: 1),
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
                                color: Colors.orange[100],
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                ban.banType.name.toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 10, 
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            const Spacer(),
                            if(ban.bannedUntil != null)
                            Text(
                              'Until: ${DateFormat('MMM dd, yyyy').format(ban.bannedUntil!)}',
                              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Reason: ${ban.reason}',
                          style: const TextStyle(fontSize: 13),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'By: ${ban.bannedByDisplayName} (@${ban.bannedByUsername})',
                          style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                        ),
                        if (canRevoke) ...[
                          const SizedBox(height: 8),
                          Align(
                            alignment: Alignment.centerRight,
                            child: OutlinedButton.icon(
                              onPressed: () => onRevokeBan(ban.banId, ban.reason),
                              icon: const Icon(Icons.undo, size: 14),
                              label: const Text('Revoke'),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.red,
                                side: const BorderSide(color: Colors.red),
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                                visualDensity: VisualDensity.compact,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(height: 1),
            ListTile(
              dense: true,
              leading: const Icon(Icons.info_outline, size: 16),
              title: const Text('View Full Member Details'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => MemberDetailScreen(
                      fanHubMemberId: member.resolvedId,
                    ),
                  ),
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}
