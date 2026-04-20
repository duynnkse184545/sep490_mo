import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/features/post/presentation/controllers/hub_feed_controller.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_list_widget.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_loader_widget.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_error_widget.dart';

class HubFeedWidget extends HookConsumerWidget {
  final String subdomain;

  const HubFeedWidget({super.key, required this.subdomain});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedAsync = ref.watch(
      hubFeedControllerProvider(subdomain: subdomain),
    );
    final controller = ref.read(
      hubFeedControllerProvider(subdomain: subdomain).notifier,
    );

    return feedAsync.when(
      data: (feedState) => FeedListWidget(
        feedState: feedState,
        onLoadMore: controller.loadMore,
        onRefresh: controller.refresh,
        isScrollable: false,
      ),
      loading: () => FeedLoaderWidget(),
      error: (error, _) => FeedErrorWidget(
        message: error.toString(),
        onRetry: controller.refresh,
      ),
    );
  }
}