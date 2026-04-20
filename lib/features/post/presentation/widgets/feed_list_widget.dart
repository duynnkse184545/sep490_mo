import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sep490_mo/features/post/presentation/widgets/post_card.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_empty_widget.dart';
import 'package:sep490_mo/features/post/presentation/states/feed_state.dart';

class FeedListWidget extends HookWidget {
  final FeedState feedState;
  final VoidCallback onLoadMore;
  final VoidCallback onRefresh;
  final bool isScrollable; // ← new

  const FeedListWidget({
    super.key,
    required this.feedState,
    required this.onLoadMore,
    required this.onRefresh,
    this.isScrollable = true, // ← default true, FeedScreen works as before
  });

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final colorScheme = Theme.of(context).colorScheme;

    useEffect(() {
      if (!isScrollable) return null; // ← skip scroll listener if not scrollable

      void onScroll() {
        if (!scrollController.hasClients) return;
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200) {
          onLoadMore();
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController, isScrollable]);

    final physics = isScrollable
        ? const AlwaysScrollableScrollPhysics()
        : const NeverScrollableScrollPhysics();

    return feedState.when(
      ready: (posts) => ListView.separated(
        controller: isScrollable ? scrollController : null,
        shrinkWrap: !isScrollable,
        physics: physics,
        padding: const EdgeInsets.all(8),
        itemCount: posts.length,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, index) => PostCard(post: posts[index]),
      ),
      loadingMore: (posts) => ListView.separated(
        controller: isScrollable ? scrollController : null,
        shrinkWrap: !isScrollable,
        physics: physics,
        padding: const EdgeInsets.all(8),
        itemCount: posts.length + 1,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          if (index == posts.length) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: CircularProgressIndicator(color: colorScheme.primary),
              ),
            );
          }
          return PostCard(post: posts[index]);
        },
      ),
      refreshing: (posts) => ListView.separated(
        controller: isScrollable ? scrollController : null,
        shrinkWrap: !isScrollable,
        physics: physics,
        padding: const EdgeInsets.all(8),
        itemCount: posts.length,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, index) => PostCard(post: posts[index]),
      ),
      empty: () => const FeedEmptyWidget(),
    );
  }
}