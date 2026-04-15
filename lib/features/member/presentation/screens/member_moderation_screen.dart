import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';
import 'package:sep490_mo/features/member/presentation/controllers/member_moderation_controller.dart';
import 'package:sep490_mo/features/member/presentation/states/member_moderation_state.dart';
import 'package:sep490_mo/features/member/presentation/widgets/member_report_card.dart';

class MemberModerationScreen extends HookConsumerWidget {
  final int fanHubId;

  const MemberModerationScreen({super.key, required this.fanHubId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

    final state = ref.watch(
      memberModerationControllerProvider(fanHubId: fanHubId),
    );
    final controller = ref.read(
      memberModerationControllerProvider(fanHubId: fanHubId).notifier,
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
      data: (moderationState) {
        Future<void> onRefresh() => controller.refresh();

        return moderationState.when(
          ready: (members) => RefreshIndicator(
            onRefresh: onRefresh,
            child: _buildMemberList(
              context,
              controller,
              members,
              scrollController,
              isLoadingMore: false,
            ),
          ),
          loadingMore: (members) => RefreshIndicator(
            onRefresh: onRefresh,
            child: _buildMemberList(
              context,
              controller,
              members,
              scrollController,
              isLoadingMore: true,
            ),
          ),
          empty: () => LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: SizedBox(
                height: constraints.maxHeight,
                child: const Center(
                  child: Text('No reported members'),
                ),
              ),
            ),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline,
              size: 48,
              color: Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              error.toString(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.invalidate(
                memberModerationControllerProvider(fanHubId: fanHubId),
              ),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMemberList(
    BuildContext context,
    MemberModerationController controller,
    List<MemberWithReports> members,
    ScrollController scrollController, {
    required bool isLoadingMore,
  }) {
    return ListView.builder(
      controller: scrollController,
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      itemCount: members.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index >= members.length) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            ),
          );
        }

        final member = members[index];
        return MemberReportCard(
          member: member,
          onResolve: (message) {
            // Resolve all reports for this member
            final reportIds = member.reports.map((r) => r.reportId).toList();
            controller.resolveReportsBulk(reportIds, message);
          },
        );
      },
    );
  }
}
