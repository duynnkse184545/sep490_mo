import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';
import 'package:sep490_mo/features/member/data/providers/member_ban_providers.dart';
import 'package:sep490_mo/features/member/presentation/states/member_ban_state.dart';

part 'member_ban_controller.g.dart';

@riverpod
class MemberBanController extends _$MemberBanController {
  static const int _pageSize = 20;

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;
  List<MemberWithBans> _members = [];

  @override
  Future<MemberBanState> build({
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
      MemberBanState.loadingMore(List.from(_members)),
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
        .read(memberBanRepositoryProvider)
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
          state = const AsyncValue.data(MemberBanState.empty());
        } else {
          state = AsyncValue.data(
            MemberBanState.ready(List.from(_members)),
          );
        }
      },
    );
  }

  Future<void> unbanMember(int banId) async {
    final result = await ref
        .read(memberBanRepositoryProvider)
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
