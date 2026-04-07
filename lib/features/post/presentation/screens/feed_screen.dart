import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/features/post/presentation/controllers/feed_controller.dart';
import 'package:sep490_mo/features/post/presentation/states/feed_state.dart';
import 'package:sep490_mo/features/post/presentation/widgets/post_card.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_empty_widget.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_error_widget.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_loader_widget.dart';

class FeedScreen extends HookConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedAsync = ref.watch(feedControllerProvider);
    final controller = ref.read(feedControllerProvider.notifier);
    final scrollController = useScrollController();
    final colorScheme = Theme.of(context).colorScheme;

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
        title: const Text('Feed'),
        backgroundColor: colorScheme.surfaceContainerHigh,
        foregroundColor: colorScheme.onSurface,
      ),
      body: SafeArea(
        child: feedAsync.when(
          data: (feedState) => feedState.when(
            ready: (posts) => ListView.separated(
              controller: scrollController,
              padding: const EdgeInsets.all(8),
              itemCount: posts.length + 1,
              separatorBuilder: (_, _) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                if (index == posts.length) return const SizedBox.shrink(); //Show nothing when end reached
                return PostCard(post: posts[index]);
              },
            ),
            loadingMore: (posts) => ListView.separated(
              controller: scrollController,
              padding: const EdgeInsets.all(8),
              itemCount: posts.length + 1,
              separatorBuilder: (_, _) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                if (index == posts.length) return const CircularProgressIndicator();
                return PostCard(post: posts[index]);
              },
            ),
            refreshing: (posts) => RefreshIndicator(
              onRefresh: controller.refresh,
              color: colorScheme.primary,
              child: ListView.separated(
                controller: scrollController,
                padding: const EdgeInsets.all(8),
                itemCount: posts.length,
                separatorBuilder: (_, _) => const SizedBox(height: 8),
                itemBuilder: (context, index) => PostCard(post: posts[index]),
              ),
            ),
            empty: () => const FeedEmptyWidget(),
          ),
          loading: () => FeedLoaderWidget(),
          error: (error, stackTrace) => FeedErrorWidget(
            message: error.toString(),
            onRetry: controller.refresh,
          ),
        ),
      ),
    );
  }
}
