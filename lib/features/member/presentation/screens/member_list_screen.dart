import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/widgets/empty_state.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
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
                        return _MemberTile(member: members[index]);
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
                      return _MemberTile(member: members[index]);
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

class _MemberTile extends StatelessWidget {
  final Member member;

  const _MemberTile({required this.member});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
      trailing: member.roleInHub == MemberRole.moderator
          ? Chip(
              label: const Text('MOD'),
              visualDensity: VisualDensity.compact,
              backgroundColor: theme.colorScheme.primaryContainer,
            )
          : null,
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
}
