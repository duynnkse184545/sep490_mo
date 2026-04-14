import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/features/post/data/models/report_models.dart';
import 'package:sep490_mo/features/post/presentation/controllers/post_report_controller.dart';
import 'package:sep490_mo/features/post/presentation/states/post_report_state.dart';
import 'package:sep490_mo/features/post/presentation/widgets/report_post_card.dart';

class PostReportScreen extends HookConsumerWidget {
  final int fanHubId;

  const PostReportScreen({super.key, required this.fanHubId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPosts = useState<Set<int>>({});
    final scrollController = useScrollController();

    final state = ref.watch(
      postReportControllerProvider(fanHubId: fanHubId),
    );
    final controller = ref.read(
      postReportControllerProvider(fanHubId: fanHubId).notifier,
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

    return Column(
      children: [
        if (selectedPosts.value.isNotEmpty)
          _buildBulkActionsBar(context, controller, selectedPosts),
        Expanded(
          child: state.when(
              data: (reportState) {
                Future<void> onRefresh() => controller.refresh();

                return reportState.when(
                  ready: (posts) => RefreshIndicator(
                    onRefresh: onRefresh,
                    child: _buildReportList(
                      context,
                      controller,
                      posts,
                      selectedPosts,
                      scrollController,
                      isLoadingMore: false,
                    ),
                  ),
                  loadingMore: (posts) => RefreshIndicator(
                    onRefresh: onRefresh,
                    child: _buildReportList(
                      context,
                      controller,
                      posts,
                      selectedPosts,
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
                          child: Text('No reported posts'),
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
                        postReportControllerProvider(fanHubId: fanHubId),
                      ),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildReportList(
    BuildContext context,
    PostReportController controller,
    List<PostWithReport> posts,
    ValueNotifier<Set<int>> selectedPosts,
    ScrollController scrollController, {
    required bool isLoadingMore,
  }) {
    return ListView.builder(
      controller: scrollController,
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      itemCount: posts.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index >= posts.length) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            ),
          );
        }

        final post = posts[index];
        return ReportPostCard(
          post: post,
          isSelected: selectedPosts.value.contains(post.postId),
          onToggleSelect: () {
            final updated = Set<int>.from(selectedPosts.value);
            if (updated.contains(post.postId)) {
              updated.remove(post.postId);
            } else {
              updated.add(post.postId);
            }
            selectedPosts.value = updated;
          },
          onResolve: () {
            // Resolve all reports for this post
            final reportIds = post.reports.map((r) => r.reportId).toList();
            controller.resolveReportsBulk(reportIds);
          },
        );
      },
    );
  }

  Widget _buildBulkActionsBar(
    BuildContext context,
    PostReportController controller,
    ValueNotifier<Set<int>> selectedPosts,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.grey[100],
      child: Row(
        children: [
          Text('${selectedPosts.value.length} selected'),
          const Spacer(),
          TextButton.icon(
            onPressed: () {
              final postIds = selectedPosts.value.toList();
              // Collect all report IDs for selected posts
              // This would need access to the state, simplified here
              selectedPosts.value = {};
            },
            icon: const Icon(Icons.check_circle),
            label: const Text('Resolve'),
          ),
          IconButton(
            onPressed: () => selectedPosts.value = {},
            icon: const Icon(Icons.clear),
          ),
        ],
      ),
    );
  }
}
