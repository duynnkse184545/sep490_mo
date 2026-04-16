import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/providers/ban_providers.dart';
import 'package:sep490_mo/features/member/presentation/states/ban_state.dart';

part 'ban_controller.g.dart';

@riverpod
class BanController extends _$BanController {
  static const int _pageSize = 20;

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;
  List<Member> _members = [];

  @override
  Future<BanState> build({
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
      BanState.loadingMore(List.from(_members)),
    );
    await _fetchNextPage();
    _isFetchingMore = false;
  }

  void _resetPagination() {
    _currentPage = 0;
    _hasMore = true;
    _isFetchingMore = false;
    _members = [];
  }

  Future<void> _fetchNextPage() async {
    final result = await ref
        .read(banRepositoryProvider)
        .getBannedMembers(
          fanHubId: fanHubId,
          pageNo: _currentPage,
          pageSize: _pageSize,
          sortBy: 'id',
        )
        .run();

    result.fold(
      (failure) {
        if (_members.isEmpty) {
          state = AsyncValue.error(failure, StackTrace.current);
        }
      },
      (newMembers) {
        if (newMembers.length < _pageSize) _hasMore = false;
        _members.addAll(newMembers);
        if (newMembers.isNotEmpty) _currentPage++;

        if (_members.isEmpty) {
          state = const AsyncValue.data(BanState.empty());
        } else {
          state = AsyncValue.data(
            BanState.ready(List.from(_members)),
          );
        }
      },
    );
  }

  Future<void> banMember(BanRequest banRequest) async {
    final result = await ref
        .read(banRepositoryProvider)
        .banMember(banRequest)
        .run();

    result.fold(
      (failure) {
        // Handle failure
      },
      (_) {
        refresh();
      },
    );
  }

  Future<void> unbanMember(int banId) async {
    final result = await ref
        .read(banRepositoryProvider)
        .unbanMember(banId)
        .run();

    result.fold(
      (failure) {
        // Handle failure
      },
      (_) {
        refresh();
      },
    );
  }
}
