import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/post/data/models/report_models.dart';
import 'package:sep490_mo/features/post/data/providers/post_report_providers.dart';
import 'package:sep490_mo/features/post/presentation/states/post_report_state.dart';

part 'post_report_controller.g.dart';

@riverpod
class PostReportController extends _$PostReportController {
  static const int _pageSize = 20;

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;
  List<PostWithReport> _posts = [];

  @override
  Future<PostReportState> build({
    required int fanHubId,
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
      PostReportState.loadingMore(List.from(_posts)),
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
    final result = await ref
        .read(postReportRepositoryProvider)
        .getPostsWithReports(
          fanHubId: fanHubId,
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
          state = const AsyncValue.data(PostReportState.empty());
        } else {
          state = AsyncValue.data(
            PostReportState.ready(List.from(_posts)),
          );
        }
      },
    );
  }

  Future<void> resolveReport(int reportId) async {
    final result = await ref
        .read(postReportRepositoryProvider)
        .resolveReport(reportId, 'Report resolved by moderator')
        .run();

    result.fold(
      (failure) {
        // Silently fail - could add snackbar notification
      },
      (_) {
        // Refresh to get updated state
        refresh();
      },
    );
  }

  Future<void> resolveReportsBulk(List<int> reportIds) async {
    final result = await ref
        .read(postReportRepositoryProvider)
        .resolveReportBulk(reportIds, 'Reports resolved by moderator')
        .run();

    result.fold(
      (failure) {
        // Silently fail - could add snackbar notification
      },
      (_) => refresh(),
    );
  }
}
