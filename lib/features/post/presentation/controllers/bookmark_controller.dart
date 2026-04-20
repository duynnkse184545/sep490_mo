import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/providers/post_providers.dart';
import 'package:sep490_mo/features/post/presentation/states/bookmark_state.dart';

part 'bookmark_controller.g.dart';

@riverpod
class BookmarkController extends _$BookmarkController {
  static const int _pageSize = 10;
  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;
  final List<Post> _posts = [];

  @override
  Future<BookmarkState> build() async {
    await _fetchNextPage();
    return state.value ?? const BookmarkState.empty();
  }

  Future<void> refresh() async {
    _currentPage = 0;
    _hasMore = true;
    _isFetchingMore = false;
    _posts.clear();
    ref.invalidateSelf();
  }

  Future<void> loadMore() async {
    if (!_hasMore || _isFetchingMore) return;
    _isFetchingMore = true;
    state = AsyncValue.data(BookmarkState.loadingMore(List.from(_posts)));
    await _fetchNextPage();
    _isFetchingMore = false;
  }

  Future<void> _fetchNextPage() async {
    final result = await ref
        .read(postRepositoryProvider)
        .getBookmarked(
          pageNo: _currentPage,
          pageSize: _pageSize,
          sortBy: 'id',
        )
        .run();

    result.fold(
      (failure) {
        if (_posts.isEmpty) {
          state = AsyncValue.error(failure, StackTrace.current);
        }
      },
      (newPosts) {
        if (newPosts.length < _pageSize) _hasMore = false;
        _posts.addAll(newPosts);
        if (newPosts.isNotEmpty) _currentPage++;

        if (_posts.isEmpty) {
          state = const AsyncValue.data(BookmarkState.empty());
        } else {
          state = AsyncValue.data(BookmarkState.ready(List.from(_posts)));
        }
      },
    );
  }
}
