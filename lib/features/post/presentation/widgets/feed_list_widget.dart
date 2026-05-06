import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/presentation/widgets/post_card.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_empty_widget.dart';
import 'package:sep490_mo/features/post/presentation/states/feed_state.dart';

class FeedListWidget extends HookWidget {
  final FeedState feedState;
  final VoidCallback onLoadMore;
  final VoidCallback onRefresh;
  final bool isScrollable;

  const FeedListWidget({
    super.key,
    required this.feedState,
    required this.onLoadMore,
    required this.onRefresh,
    this.isScrollable = true,
  });

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final colorScheme = Theme.of(context).colorScheme;

    useEffect(() {
      if (!isScrollable) return null;

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
      ready: (posts) {
        final filteredPosts = _filterPosts(posts);
        if (filteredPosts.isEmpty) return const FeedEmptyWidget();

        return ListView.separated(
          controller: isScrollable ? scrollController : null,
          shrinkWrap: !isScrollable,
          physics: physics,
          padding: const EdgeInsets.all(8),
          itemCount: filteredPosts.length,
          separatorBuilder: (_, _) => const SizedBox(height: 8),
          itemBuilder: (context, index) => PostCard(post: filteredPosts[index]),
        );
      },
      loadingMore: (posts) {
        final filteredPosts = _filterPosts(posts);
        return ListView.separated(
          controller: isScrollable ? scrollController : null,
          shrinkWrap: !isScrollable,
          physics: physics,
          padding: const EdgeInsets.all(8),
          itemCount: filteredPosts.length + 1,
          separatorBuilder: (_, _) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            if (index == filteredPosts.length) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: CircularProgressIndicator(color: colorScheme.primary),
                ),
              );
            }
            return PostCard(post: filteredPosts[index]);
          },
        );
      },
      refreshing: (posts) {
        final filteredPosts = _filterPosts(posts);
        return ListView.separated(
          controller: isScrollable ? scrollController : null,
          shrinkWrap: !isScrollable,
          physics: physics,
          padding: const EdgeInsets.all(8),
          itemCount: filteredPosts.length,
          separatorBuilder: (_, _) => const SizedBox(height: 8),
          itemBuilder: (context, index) => PostCard(post: filteredPosts[index]),
        );
      },
      empty: () => const FeedEmptyWidget(),
    );
  }

  List<Post> _filterPosts(List<Post> posts) {
    return posts.where((p) => 
      p.postType != PostType.announcement && 
      p.postType != PostType.eventSchedule
    ).toList();
  }
}