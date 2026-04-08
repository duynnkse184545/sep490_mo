import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/network/network_provider.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/providers/feed_providers.dart';
import 'package:sep490_mo/features/post/presentation/states/feed_state.dart';

part 'hub_feed_controller.g.dart';

@riverpod
class HubFeedController extends _$HubFeedController {
  static const int _pageSize = 30;

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;

  @override
  Future<FeedState> build({required String subdomain}) async {
    if (await ref.read(networkInfoProvider).isConnected) {
      await _fetchNextPage(subdomain);
    }

    return state.value ?? const FeedState.empty();
  }

  Future<void> refresh() async {
    _currentPage = 0;
    _hasMore = true;
    _isFetchingMore = false;
    ref.invalidateSelf();
  }

  Future<void> loadMore() async {
    final isConnected = await ref.read(networkInfoProvider).isConnected;

    if (!isConnected || !_hasMore || _isFetchingMore) return;

    _isFetchingMore = true;

    final currentPosts =
        state.value?.maybeWhen(ready: (posts) => posts, orElse: () => null) ??
        <Post>[];

    state = AsyncValue.data(FeedState.loadingMore(currentPosts));

    await _fetchNextPage(subdomain);

    _isFetchingMore = false;
  }

  Future<void> _fetchNextPage(String subdomain) async {
    final result = await ref
        .read(feedRepositoryProvider)
        .getFeedByFanHub(
          subdomain: subdomain,
          pageNo: _currentPage,
          pageSize: _pageSize,
        ).run();

    result.fold(
      (failure) {
        if (state.value == null) {
          state = AsyncValue.error(failure, StackTrace.current);
        }
      },
      (newPosts) {
        if (newPosts.length < _pageSize) _hasMore = false;
        if (newPosts.isNotEmpty) {
          _currentPage++;

          final currentPosts =
              state.value?.maybeWhen(
                ready: (posts) => posts,
                loadingMore: (posts) => posts,
                orElse: () => null,
              ) ??
              <Post>[];

          final allPosts = [...currentPosts, ...newPosts];
          state = AsyncValue.data(FeedState.ready(allPosts));
        }
      },
    );
  }
}
