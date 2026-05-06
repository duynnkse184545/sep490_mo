import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/app/app_notifier.dart';
import 'package:sep490_mo/app/app_state.dart';
import 'package:sep490_mo/core/network/network_provider.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/providers/feed_providers.dart';
import 'package:sep490_mo/features/post/presentation/states/news_state.dart';

part 'news_controller.g.dart';

@riverpod
class NewsController extends _$NewsController {
  static const int _pageSize = 20;

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;
  final List<Post> _allNewsPosts = [];

  @override
  Future<NewsState> build() async {
    final isConnected = await ref.read(networkInfoProvider).isConnected;
    if (!isConnected) {
      return const NewsState.empty();
    }

    final appState = ref.watch(appProvider);
    
    return await appState.maybeWhen(
      ready: (user) async {
        final joinedHubs = user.fanHubsJoined ?? [];
        if (joinedHubs.isEmpty) {
          return const NewsState.notJoinedAnyHub();
        }

        await _fetchNextPage(joinedHubs.map((h) => h.fanHubId).toList());
        return state.value ?? const NewsState.empty();
      },
      orElse: () => const NewsState.empty(),
    );
  }

  Future<void> refresh() async {
    _currentPage = 0;
    _hasMore = true;
    _isFetchingMore = false;
    _allNewsPosts.clear();
    ref.invalidateSelf();
  }

  Future<void> loadMore() async {
    final isConnected = await ref.read(networkInfoProvider).isConnected;
    if (!isConnected || !_hasMore || _isFetchingMore) return;

    _isFetchingMore = true;
    state = AsyncValue.data(NewsState.loadingMore(List.from(_allNewsPosts)));
    
    final appState = ref.read(appProvider);
    await appState.maybeWhen(
      ready: (user) async {
        final hubIds = (user.fanHubsJoined ?? []).map((h) => h.fanHubId).toList();
        await _fetchNextPage(hubIds);
      },
      orElse: () async {},
    );
    
    _isFetchingMore = false;
  }

  Future<void> _fetchNextPage(List<int> hubIds) async {
    if (hubIds.isEmpty) return;

    // Fetch from all hubs in parallel
    final futures = hubIds.map((id) => ref.read(feedRepositoryProvider).getFanHubAnnouncementsEvents(
      fanHubId: id,
      pageNo: _currentPage,
      pageSize: _pageSize,
    ).run());

    final results = await Future.wait(futures);

    final List<Post> newPosts = [];
    bool anyHubHasMore = false;

    for (final result in results) {
      result.fold(
        (failure) => null, // Ignore individual hub failures
        (posts) {
          if (posts.length >= _pageSize) anyHubHasMore = true;
          newPosts.addAll(posts);
        },
      );
    }

    _hasMore = anyHubHasMore;
    
    // Sort all aggregated posts by createdAt descending
    newPosts.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    _allNewsPosts.addAll(newPosts);
    _currentPage++;

    if (_allNewsPosts.isEmpty) {
      state = const AsyncValue.data(NewsState.empty());
    } else {
      state = AsyncValue.data(NewsState.ready(List.from(_allNewsPosts)));
    }
  }
}
