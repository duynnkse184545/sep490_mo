import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/widgets/empty_state.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/post/presentation/controllers/bookmark_controller.dart';
import 'package:sep490_mo/features/post/presentation/states/bookmark_state.dart';
import 'package:sep490_mo/features/post/presentation/widgets/post_card.dart';

class BookmarkScreen extends HookConsumerWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarkAsync = ref.watch(bookmarkControllerProvider);
    final controller = ref.read(bookmarkControllerProvider.notifier);
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarks'),
      ),
      body: bookmarkAsync.when(
        data: (state) => state.when(
          ready: (posts) => RefreshIndicator(
            onRefresh: controller.refresh,
            child: ListView.separated(
              controller: scrollController,
              padding: const EdgeInsets.all(12),
              itemCount: posts.length,
              separatorBuilder: (_, _) => const SizedBox(height: 8),
              itemBuilder: (context, index) => PostCard(post: posts[index]),
            ),
          ),
          loadingMore: (posts) => RefreshIndicator(
            onRefresh: controller.refresh,
            child: ListView.separated(
              controller: scrollController,
              padding: const EdgeInsets.all(12),
              itemCount: posts.length + 1,
              separatorBuilder: (_, _) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                if (index == posts.length) {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                return PostCard(post: posts[index]);
              },
            ),
          ),
          empty: () => const EmptyState(
            message: 'No bookmarked posts yet',
            icon: Icons.bookmark_border,
          ),
        ),
        loading: () => const Loader(),
        error: (error, stack) => ErrorBanner(
          message: error.toString(),
          onRetry: controller.refresh,
        ),
      ),
    );
  }
}
