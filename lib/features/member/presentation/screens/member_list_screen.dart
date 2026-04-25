import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/widgets/empty_state.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/presentation/controllers/member_checking_controller.dart';
import 'package:sep490_mo/features/member/presentation/controllers/member_list_controller.dart';
import 'package:sep490_mo/features/member/presentation/screens/member_detail_screen.dart';
import 'package:sep490_mo/features/member/presentation/states/member_list_state.dart';

class MemberListScreen extends HookConsumerWidget {
  final int fanHubId;

  const MemberListScreen({super.key, required this.fanHubId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberAsync = ref.watch(
      memberListControllerProvider(fanHubId: fanHubId),
    );
    final controller = ref.read(
      memberListControllerProvider(fanHubId: fanHubId).notifier,
    );
    final scrollController = useScrollController();
    final searchController = useTextEditingController();

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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Members'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search by username',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: searchController.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            searchController.clear();
                            controller.searchByUsername(null);
                          },
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  isDense: true,
                ),
                onSubmitted: (value) => controller.searchByUsername(value),
              ),
            ),
            Expanded(
              child: memberAsync.when(
                data: (memberState) => memberState.when(
                  ready: (members) => RefreshIndicator(
                    onRefresh: controller.refresh,
                    child: ListView.separated(
                      controller: scrollController,
                      padding: const EdgeInsets.only(top: 8, bottom: 16),
                      itemCount: members.length + 1,
                      separatorBuilder: (_, _) => const SizedBox.shrink(),
                      itemBuilder: (context, index) {
                        if (index == members.length) {
                          return const SizedBox.shrink();
                        }
                        return _MemberTile(
                          member: members[index],
                          fanHubId: fanHubId,
                        );
                      },
                    ),
                  ),
                  loadingMore: (members) => ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.only(top: 8, bottom: 16),
                    itemCount: members.length + 1,
                    separatorBuilder: (_, _) => const SizedBox.shrink(),
                    itemBuilder: (context, index) {
                      if (index == members.length) {
                        return const Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                      return _MemberTile(
                        member: members[index],
                        fanHubId: fanHubId,
                      );
                    },
                  ),
                  empty: () => const EmptyState(
                    message: 'No members found',
                    icon: Icons.people_outline,
                  ),
                ),
                loading: () => const Loader(),
                error: (error, stackTrace) => ErrorBanner(
                  message: error.toString(),
                  onRetry: controller.refresh,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MemberTile extends HookConsumerWidget {
  final Member member;
  final int fanHubId;

  const _MemberTile({required this.member, required this.fanHubId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final currentUserRoleAsync = ref.watch(memberCheckingControllerProvider(fanHubId: fanHubId));
    
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: member.avatarUrl != null
            ? NetworkImage(member.avatarUrl!)
            : null,
        child: member.avatarUrl == null
            ? Text(
                (member.displayName ?? member.username ?? 'M')[0].toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            : null,
      ),
      title: Text(member.displayName ?? member.username ?? 'Unknown'),
      subtitle: Text(member.title ?? member.roleInHub.name),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (member.roleInHub == MemberRole.moderator)
            Chip(
              label: const Text('MOD'),
              visualDensity: VisualDensity.compact,
              backgroundColor: theme.colorScheme.primaryContainer,
            ),
          currentUserRoleAsync.maybeWhen(
            data: (checking) => _buildPopupMenu(context, ref, checking),
            orElse: () => const SizedBox.shrink(),
          ),
        ],
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => MemberDetailScreen(
              fanHubMemberId: member.resolvedId,
            ),
          ),
        );
      },
    );
  }

  Widget _buildPopupMenu(BuildContext context, WidgetRef ref, MemberCheckingResponse checking) {
    final isVtuber = checking.roleInHub == MemberRole.vtuber;
    final isModerator = checking.roleInHub == MemberRole.moderator;
    final canAdmin = isVtuber || isModerator;

    // Determine available actions for this specific member tile
    final showPromote = isVtuber && member.roleInHub == MemberRole.member;
    final showDemote = isVtuber && member.roleInHub == MemberRole.moderator;
    final showKick = canAdmin && member.roleInHub == MemberRole.member;
    final showBan = canAdmin && member.roleInHub == MemberRole.member;

    if (!showPromote && !showDemote && !showKick && !showBan) {
      return const SizedBox.shrink();
    }

    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert),
      onSelected: (action) {
        switch (action) {
          case 'promote':
            _showPromoteDialog(context, ref);
            break;
          case 'demote':
            _showDemoteDialog(context, ref);
            break;
          case 'kick':
            _showKickDialog(context, ref);
            break;
          case 'ban':
            _showBanDialog(context, ref);
            break;
        }
      },
      itemBuilder: (context) => [
        if (showPromote)
          const PopupMenuItem(
            value: 'promote',
            child: ListTile(
              leading: Icon(Icons.military_tech, color: Colors.blue),
              title: Text('Promote to Moderator'),
              contentPadding: EdgeInsets.zero,
              dense: true,
            ),
          ),
        if (showDemote)
          const PopupMenuItem(
            value: 'demote',
            child: ListTile(
              leading: Icon(Icons.remove_moderator, color: Colors.orange),
              title: Text('Demote Moderator'),
              contentPadding: EdgeInsets.zero,
              dense: true,
            ),
          ),
        if (showKick)
          const PopupMenuItem(
            value: 'kick',
            child: ListTile(
              leading: Icon(Icons.person_remove, color: Colors.red),
              title: Text('Kick Member'),
              contentPadding: EdgeInsets.zero,
              dense: true,
            ),
          ),
        if (showBan)
          const PopupMenuItem(
            value: 'ban',
            child: ListTile(
              leading: Icon(Icons.gavel, color: Colors.red),
              title: Text('Ban Member'),
              contentPadding: EdgeInsets.zero,
              dense: true,
            ),
          ),
      ],
    );
  }

  Future<void> _showPromoteDialog(BuildContext context, WidgetRef ref) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Promote to Moderator'),
        content: Text('Are you sure you want to promote ${member.displayName ?? member.username} to Moderator?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              ref
                  .read(memberListControllerProvider(fanHubId: fanHubId).notifier)
                  .setModerator(member.resolvedId);
              Navigator.of(context).pop();
            },
            child: const Text('Promote'),
          ),
        ],
      ),
    );
  }

  Future<void> _showDemoteDialog(BuildContext context, WidgetRef ref) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Demote Moderator'),
        content: Text('Are you sure you want to remove moderator status from ${member.displayName ?? member.username}?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              ref
                  .read(memberListControllerProvider(fanHubId: fanHubId).notifier)
                  .removeModerator(member.resolvedId);
              Navigator.of(context).pop();
            },
            child: const Text('Demote', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Future<void> _showKickDialog(BuildContext context, WidgetRef ref) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Kick Member'),
        content: Text('Are you sure you want to kick ${member.displayName ?? member.username} from this Hub?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              ref
                  .read(memberListControllerProvider(fanHubId: fanHubId).notifier)
                  .kickMember(member.resolvedId);
              Navigator.of(context).pop();
            },
            child: const Text('Kick', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Future<void> _showBanDialog(BuildContext context, WidgetRef ref) async {
    final reasonController = TextEditingController();
    DateTime bannedUntil = DateTime.now().add(const Duration(days: 7));
    BanType selectedBanType = BanType.comment;

    return showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: Text('Ban ${member.displayName ?? member.username}'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: reasonController,
                decoration: const InputDecoration(
                  labelText: 'Reason',
                  hintText: 'Enter reason for ban',
                ),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<BanType>(
                initialValue: selectedBanType,
                decoration: const InputDecoration(
                  labelText: 'Ban Type',
                  border: OutlineInputBorder(),
                ),
                items: BanType.values.map((type) {
                  return DropdownMenuItem(
                    value: type,
                    child: Text(type.name.toUpperCase()),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() => selectedBanType = value);
                  }
                },
              ),
              const SizedBox(height: 16),
              ListTile(
                title: const Text('Ban Until'),
                subtitle: Text(
                  '${bannedUntil.year}-${bannedUntil.month}-${bannedUntil.day}',
                ),
                trailing: const Icon(Icons.calendar_today),
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: bannedUntil,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 365 * 10)),
                  );
                  if (picked != null) {
                    setState(() => bannedUntil = picked);
                  }
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                final reason = reasonController.text.trim();
                if (reason.isEmpty) return;

                final request = BanRequest(
                  fanHubMemberId: member.resolvedId,
                  reason: reason,
                  banType: selectedBanType,
                  bannedUntil: bannedUntil,
                );

                ref
                    .read(memberListControllerProvider(fanHubId: fanHubId).notifier)
                    .banMember(request);
                
                Navigator.of(context).pop();
              },
              child: const Text('Ban', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
