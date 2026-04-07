import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';
import 'package:sep490_mo/features/fanhub/data/providers/fanhub_providers.dart';
import 'package:sep490_mo/features/fanhub/presentation/states/fanhub_state.dart';

part 'fanhub_controller.g.dart';

@riverpod
class FanHubListController extends _$FanHubListController {
  static const int _pageSize = 10;

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;
  List<FanHub> _fanHubs = [];

  @override
  Future<FanHubState> build() async {
    await _fetchNextPage();
    return state.value ?? const FanHubState.empty();
  }

  Future<void> refresh() async {
    _currentPage = 0;
    _hasMore = true;
    _isFetchingMore = false;
    _fanHubs = [];
    ref.invalidateSelf();
  }

  Future<void> loadMore() async {
    if (!_hasMore || _isFetchingMore) return;

    _isFetchingMore = true;
    state = AsyncValue.data(FanHubState.loadingMore(_fanHubs));
    await _fetchNextPage();
    _isFetchingMore = false;
  }

  Future<void> _fetchNextPage() async {
    final result = await ref
        .read(fanHubRepositoryProvider)
        .getFanHubs(
          pageNo: _currentPage,
          pageSize: _pageSize,
          sortBy: 'createdAt',
          includePrivate: false,
        )
        .run();

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
        state = AsyncValue.data(FanHubState.ready(List.from(_fanHubs)));
      },
    );
  }
}
