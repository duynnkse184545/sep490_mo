import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/presentation/controllers/post_moderation_controller.dart';
import 'package:sep490_mo/features/post/presentation/states/post_moderation_state.dart';
import 'package:sep490_mo/features/post/presentation/widgets/moderation_post_card.dart';

class PostModerationScreen extends HookConsumerWidget {
  final String subdomain;
  final int fahHubId;

  const PostModerationScreen({super.key, required this.subdomain, required this.fahHubId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showPendingOnly = useState(true);
    final selectedPosts = useState<Set<int>>({});
    final scrollController = useScrollController();

    final state = ref.watch(
      postModerationControllerProvider(
        subdomain: subdomain,
        fanHubId: fahHubId,
        pendingOnly: showPendingOnly.value,
      ),
    );
    final controller = ref.read(
      postModerationControllerProvider(
        subdomain: subdomain,
        fanHubId: fahHubId,
        pendingOnly: showPendingOnly.value,
      ).notifier,
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

    useValueChanged<bool, void>(showPendingOnly.value, (_, _) {
      selectedPosts.value = {};
    });

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: DropdownButtonFormField<String>(
            initialValue: showPendingOnly.value ? 'pending' : 'all',
            decoration: const InputDecoration(
              labelText: 'Filter posts',
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
            items: const [
              DropdownMenuItem(value: 'pending', child: Text('Pending only')),
              DropdownMenuItem(value: 'all', child: Text('All posts')),
            ],
            onChanged: (value) {
              if (value != null) {
                showPendingOnly.value = value == 'pending';
              }
            },
          ),
        ),
        if (selectedPosts.value.isNotEmpty)
          _buildBulkActionsBar(context, controller, selectedPosts),
        Expanded(
          child: state.when(
            data: (moderationState) {
              Future<void> onRefresh() => controller.refresh();

              return moderationState.when(
                ready: (posts) => RefreshIndicator(
                  onRefresh: onRefresh,
                  child: _buildPostList(
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
                  child: _buildPostList(
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
                        child: Text('No posts to moderate'),
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
                  Text(error.toString(), textAlign: TextAlign.center),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => ref.invalidate(
                      postModerationControllerProvider(
                        subdomain: subdomain,
                        fanHubId: fahHubId,
                        pendingOnly: showPendingOnly.value,
                      ),
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

  Widget _buildPostList(
    BuildContext context,
    PostModerationController controller,
    List<PostModeration> posts,
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
        return ModerationPostCard(
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
          onApprove: () => controller.approvePost(post.postId),
          onReject: () => controller.rejectPost(post.postId),
          onRevalidate: () => controller.revalidatePost(post.postId),
        );
      },
    );
  }

  Widget _buildBulkActionsBar(
    BuildContext context,
    PostModerationController controller,
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
              final ids = selectedPosts.value.toList();
              selectedPosts.value = {};
              controller.approvePostsBulk(ids);
            },
            icon: const Icon(Icons.check),
            label: const Text('Approve'),
          ),
          TextButton.icon(
            onPressed: () {
              final ids = selectedPosts.value.toList();
              selectedPosts.value = {};
              controller.rejectPostsBulk(ids);
            },
            icon: const Icon(Icons.close),
            label: const Text('Reject'),
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
