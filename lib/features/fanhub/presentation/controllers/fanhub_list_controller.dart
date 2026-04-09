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
  FanHubTab _activeTab = FanHubTab.discover;

  @override
  Future<FanHubState> build() async {
    await _fetchNextPage();
    return state.value ?? FanHubState.empty(_activeTab);
  }

  FanHubTab get activeTab => _activeTab;

  void switchTab(FanHubTab tab) {
    if (_activeTab == tab) return;
    _activeTab = tab;
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
      FanHubState.loadingMore(_fanHubs, _activeTab),
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
    final result = switch (_activeTab) {
      FanHubTab.discover => await ref
          .read(fanHubRepositoryProvider)
          .getFanHubs(
            pageNo: _currentPage,
            pageSize: _pageSize,
            sortBy: 'createdAt',
            includePrivate: false,
          )
          .run(),
      FanHubTab.myHubs => await ref
          .read(fanHubRepositoryProvider)
          .getMyHubs(
            pageNo: _currentPage,
            pageSize: _pageSize,
            sortBy: 'createdAt',
          )
          .run(),
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
          state = AsyncValue.data(FanHubState.empty(_activeTab));
        } else {
          state = AsyncValue.data(
            FanHubState.ready(List.from(_fanHubs), _activeTab),
          );
        }
      },
    );
  }
}
