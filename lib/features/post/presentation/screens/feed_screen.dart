import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/features/post/presentation/controllers/feed_controller.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_list_widget.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_error_widget.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_loader_widget.dart';

class FeedScreen extends HookConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedAsync = ref.watch(feedControllerProvider);
    final controller = ref.read(feedControllerProvider.notifier);
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: feedAsync.when(
          data: (feedState) => FeedListWidget(
            feedState: feedState,
            onLoadMore: controller.loadMore,
            onRefresh: controller.refresh,
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
