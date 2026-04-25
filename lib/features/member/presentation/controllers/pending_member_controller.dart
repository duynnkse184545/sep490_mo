import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/providers/member_moderation_providers.dart';
import 'package:sep490_mo/features/member/presentation/states/pending_member_state.dart';

part 'pending_member_controller.g.dart';

@riverpod
class PendingMemberController extends _$PendingMemberController {
  static const int _pageSize = 20;

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;
  List<Member> _members = [];

  @override
  Future<PendingMemberState> build({
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
      PendingMemberState.loadingMore(List.from(_members)),
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
        .read(memberModerationRepositoryProvider)
        .getPendingMembers(
          fanHubId: fanHubId,
          pageNo: _currentPage,
          pageSize: _pageSize,
          sortBy: 'joinedAt',
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
          state = const AsyncValue.data(PendingMemberState.empty());
        } else {
          state = AsyncValue.data(
            PendingMemberState.ready(List.from(_members)),
          );
        }
      },
    );
  }

  Future<void> approveMember(int memberId) async {
    final result = await ref
        .read(memberModerationRepositoryProvider)
        .reviewMember(memberId, MemberStatus.joined)
        .run();

    result.fold((_) {}, (_) => refresh());
  }

  Future<void> rejectMember(int memberId) async {
    final result = await ref
        .read(memberModerationRepositoryProvider)
        .reviewMember(memberId, MemberStatus.rejected)
        .run();

    result.fold((_) {}, (_) => refresh());
  }
}
