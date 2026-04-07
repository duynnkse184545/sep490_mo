import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/network/network_provider.dart';
import 'package:sep490_mo/features/post/data/providers/feed_providers.dart';
import 'package:sep490_mo/features/post/presentation/states/feed_state.dart';

part 'feed_controller.g.dart';

@riverpod
class FeedController extends _$FeedController {
  static const int _pageSize = 30;

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;

  @override
  Stream<FeedState> build() async* {
    if(await ref.read(networkInfoProvider).isConnected) _fetchNextPage(); // background remote fetch

    yield* ref
        .read(feedRepositoryProvider)
        .watchFeed(limit: _pageSize)
        .map(
          (either) => either.fold(
            (failure) => throw failure, // bubble up to AsyncValue.error
            (posts) => posts.isEmpty
            ? const FeedState.empty()
            : FeedState.ready(posts),
      ),
    );
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

    final currentPosts = state.value?.maybeWhen(
      ready: (posts) => posts,
      orElse: () => null,
    ) ??
        [];

    state = AsyncValue.data(FeedState.loadingMore(currentPosts));

    await _fetchNextPage();

    _isFetchingMore = false;
  }

  Future<void> _fetchNextPage() async {
    final result = await ref
        .read(feedRepositoryProvider)
        .refreshFeed(
      pageNo: _currentPage,
      pageSize: _pageSize,
    )
        .run();

    result.fold(
          (failure) {
        // only surface error if no data yet, otherwise silently stop
        if (state.value == null) {
          state = AsyncValue.error(failure, StackTrace.current);
        }
      },
          (newPosts) {
        if (newPosts.length < _pageSize) _hasMore = false;
        if (newPosts.isNotEmpty) {
          _currentPage++;
          // _offset += newPosts.length;
        }
      },
    );
  }
}