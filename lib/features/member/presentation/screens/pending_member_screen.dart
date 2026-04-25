import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/presentation/controllers/pending_member_controller.dart';
import 'package:sep490_mo/features/member/presentation/states/pending_member_state.dart';
import 'package:sep490_mo/features/member/presentation/widgets/moderation_member_card.dart';

class PendingMemberScreen extends HookConsumerWidget {
  final int fanHubId;

  const PendingMemberScreen({super.key, required this.fanHubId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

    final state = ref.watch(
      pendingMemberControllerProvider(fanHubId: fanHubId),
    );
    final controller = ref.read(
      pendingMemberControllerProvider(fanHubId: fanHubId).notifier,
    );

    useEffect(() {
      void listener() {
        if (scrollController.hasClients &&
            scrollController.position.pixels >=
                scrollController.position.maxScrollExtent - 200) {
          controller.loadMore();
        }
      }

      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener);
    }, [scrollController]);

    return state.when(
      data: (pendingState) {
        Future<void> onRefresh() => controller.refresh();

        return pendingState.when(
          ready: (members) => RefreshIndicator(
            onRefresh: onRefresh,
            child: _buildList(controller, members, scrollController, false),
          ),
          loadingMore: (members) => RefreshIndicator(
            onRefresh: onRefresh,
            child: _buildList(controller, members, scrollController, true),
          ),
          empty: () => const Center(child: Text('No join requests')),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }

  Widget _buildList(
    PendingMemberController controller,
    List<Member> members,
    ScrollController scrollController,
    bool isLoadingMore,
  ) {
    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.all(8),
      itemCount: members.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index >= members.length) {
          return const Center(child: Padding(padding: EdgeInsets.all(16), child: CircularProgressIndicator()));
        }
        final member = members[index];
        return ModerationMemberCard(
          member: member,
          onApprove: () => controller.approveMember(member.resolvedId),
          onReject: () => controller.rejectMember(member.resolvedId),
        );
      },
    );
  }
}
