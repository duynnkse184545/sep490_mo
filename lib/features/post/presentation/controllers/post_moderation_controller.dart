import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/providers/post_moderation_providers.dart';
import 'package:sep490_mo/features/post/presentation/states/post_moderation_state.dart';

part 'post_moderation_controller.g.dart';

@riverpod
class PostModerationController extends _$PostModerationController {
  static const int _pageSize = 20;

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;
  List<PostModeration> _posts = [];

  @override
  Future<PostModerationState> build({
    required String subdomain,
    bool pendingOnly = true,
  }) async {
    _resetPagination();
    await _fetchNextPage();
    return state.requireValue;
  }

  Future<void> refresh() async {
    _resetPagination();
    ref.invalidateSelf();
  }

  Future<void> loadMore() async {
    if (!_hasMore || _isFetchingMore) return;

    _isFetchingMore = true;
    state = AsyncValue.data(
      PostModerationState.loadingMore(List.from(_posts)),
    );
    await _fetchNextPage();
    _isFetchingMore = false;
  }

  void _resetPagination() {
    _currentPage = 0;
    _hasMore = true;
    _isFetchingMore = false;
    _posts = [];
  }

  Future<void> _fetchNextPage() async {
    final result = pendingOnly
        ? await ref
            .read(postModerationRepositoryProvider)
            .getPendingPosts(
              subdomain: subdomain,
              pageNo: _currentPage,
              pageSize: _pageSize,
              sortBy: 'createdAt',
            )
            .run()
        : await ref
            .read(postModerationRepositoryProvider)
            .getAllPosts(
              subdomain: subdomain,
              pageNo: _currentPage,
              pageSize: _pageSize,
              sortBy: 'createdAt',
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
          state = const AsyncValue.data(PostModerationState.empty());
        } else {
          state = AsyncValue.data(
            PostModerationState.ready(List.from(_posts)),
          );
        }
      },
    );
  }

  Future<void> approvePost(int postId) async {
    final status = PostStatus.approved;
    final result = await ref
        .read(postModerationRepositoryProvider)
        .reviewPost(postId, status)
        .run();

    result.fold(
      (failure) {
        // Silently fail - could add snackbar notification
      },
      (_) {
        _updatePostInState(postId, status);
      },
    );
  }

  Future<void> rejectPost(int postId) async {
    final status = PostStatus.rejected;
    final result = await ref
        .read(postModerationRepositoryProvider)
        .reviewPost(postId, status)
        .run();

    result.fold(
      (failure) {
        // Silently fail - could add snackbar notification
      },
      (_) {
        _updatePostInState(postId, status);
      },
    );
  }

  Future<void> approvePostsBulk(List<int> postIds) async {
    final result = await ref
        .read(postModerationRepositoryProvider)
        .reviewPostBulk(postIds, PostStatus.approved)
        .run();

    result.fold(
      (failure) {
        // Silently fail - could add snackbar notification
      },
      (_) => refresh()
    );
  }

  Future<void> rejectPostsBulk(List<int> postIds) async {
    final result = await ref
        .read(postModerationRepositoryProvider)
        .reviewPostBulk(postIds, PostStatus.rejected)
        .run();

    result.fold(
      (failure) {
        // Silently fail - could add snackbar notification
      },
      (_) => refresh()
    );
  }

  Future<void> revalidatePost(int postId) async {
    final result = await ref
        .read(postModerationRepositoryProvider)
        .aiRevalidate(postId)
        .run();

    result.fold(
      (failure) {
        // Silently fail - could add snackbar notification
      },
      (_) {
        // Reload posts to get updated validation
        refresh();
      },
    );
  }

  void _updatePostInState(int postId, PostStatus newStatus) {
    final index = _posts.indexWhere((p) => p.postId == postId);
    if (index == -1) return;

    if (pendingOnly) {
      // Remove from list since we're only showing pending
      _posts.removeAt(index);
    } else {
      // Update status in place
      _posts[index] = _posts[index].copyWith(status: newStatus);
    }

    state = _posts.isEmpty
        ? const AsyncValue.data(PostModerationState.empty())
        : AsyncValue.data(PostModerationState.ready(List.from(_posts)));
  }}
