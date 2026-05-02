import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';
import 'package:sep490_mo/features/fanhub/data/providers/fanhub_providers.dart';
import 'package:sep490_mo/features/fanhub/presentation/states/fanhub_state.dart';

part 'fanhub_list_controller.g.dart';

@riverpod
class FanHubListController extends _$FanHubListController {
  static const int _pageSize = 10;

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;
  List<FanHub> _fanHubs = [];
  String? _searchKeyword;

  // Need background refresh after x times to fetch new data
  @override
  Future<FanHubState> build(FanHubTab tab) async {
    ref.keepAlive(); // For no refreshing, but stay until app close
    // Each tab (discover/myHubs) now has its own independent cache
    await _fetchNextPage();
    return state.value ?? FanHubState.empty(tab);
  }

  void search(String? keyword) {
    final cleanKeyword = keyword?.trim();
    if (_searchKeyword == cleanKeyword) return;
    
    _searchKeyword = cleanKeyword?.isEmpty == true ? null : cleanKeyword;
    _resetPagination();
    ref.invalidateSelf();
  }

  Future<void> refresh() async {
    _resetPagination();
    ref.invalidateSelf();
  }

  Future<void> loadMore() async {
    if (!_hasMore || _isFetchingMore) return;

    _isFetchingMore = true;
    state = AsyncValue.data(
      FanHubState.loadingMore(_fanHubs, tab),
    );
    await _fetchNextPage();
    _isFetchingMore = false;
  }

  void _resetPagination() {
    _currentPage = 0;
    _hasMore = true;
    _isFetchingMore = false;
    _fanHubs = [];
  }

  Future<void> _fetchNextPage() async {
    final result = switch (tab) {
      FanHubTab.discover => _searchKeyword != null
          ? await ref.read(fanHubRepositoryProvider).searchHubs(
                keyword: _searchKeyword!,
                pageNo: _currentPage,
                pageSize: _pageSize,
              ).run()
          : await ref.read(fanHubRepositoryProvider).getFanHubs(
                pageNo: _currentPage,
                pageSize: _pageSize,
                sortBy: 'createdAt',
                includePrivate: false,
              ).run(),
      FanHubTab.myHubs => await ref.read(fanHubRepositoryProvider).getMyHubs(
                pageNo: _currentPage,
                pageSize: _pageSize,
                sortBy: 'createdAt',
              ).run(),
    };

    result.fold(
      (failure) {
        if (_fanHubs.isEmpty) {
          state = AsyncValue.error(failure, StackTrace.current);
        }
      },
      (newFanHubs) {
        if (newFanHubs.length < _pageSize) _hasMore = false;
        _fanHubs.addAll(newFanHubs);
        if (newFanHubs.isNotEmpty) _currentPage++;
        if (_fanHubs.isEmpty) {
          state = AsyncValue.data(FanHubState.empty(tab));
        } else {
          state = AsyncValue.data(
            FanHubState.ready(List.from(_fanHubs), tab),
          );
        }
      },
    );
  }
}
