import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/network/network_provider.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/providers/feed_providers.dart';
import 'package:sep490_mo/features/post/data/providers/post_providers.dart';
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
    // may not need this bc of interceptor
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
    // may not need this bc of interceptor
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

  Future<void> like(int postId) async {
    await ref.read(postRepositoryProvider).like(postId).run();
  }

  Future<void> unlike(int postId) async {
    await ref.read(postRepositoryProvider).unlike(postId).run();
  }

  Future<void> bookmark(int postId) async {
    await ref.read(postRepositoryProvider).bookmark(postId).run();
  }

  Future<void> vote(int postId, int optionId) async {
    await ref.read(postRepositoryProvider).vote(postId, optionId).run();
  }

  Future<void> unvote(int postId) async {
    await ref.read(postRepositoryProvider).unvote(postId).run();
  }

  Future<void> share(int postId) async {
    await ref.read(postRepositoryProvider).share(postId).run();
  }

  Future<void> report(int postId, String reason) async {
    await ref.read(postRepositoryProvider).report(
      ReportRequest(postId: postId, reason: reason),
    ).run();
    // Optionally: refresh or remove the post from local state
  }
}