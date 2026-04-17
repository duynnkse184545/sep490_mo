import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/providers/member_ban_providers.dart';
import 'package:sep490_mo/features/member/data/providers/member_providers.dart';
import 'package:sep490_mo/features/member/presentation/states/member_list_state.dart';

part 'member_list_controller.g.dart';

@riverpod
class MemberListController extends _$MemberListController {
  static const int _pageSize = 20;

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;
  List<Member> _members = [];
  String? _searchUsername;

  @override
  Future<MemberListState> build({required int fanHubId}) async {
    await _fetchNextPage();
    return state.value ?? const MemberListState.empty();
  }

  Future<void> refresh() async {
    _currentPage = 0;
    _hasMore = true;
    _isFetchingMore = false;
    _members = [];
    ref.invalidateSelf();
  }

  void searchByUsername(String? username) {
    _searchUsername = username?.isEmpty == true ? null : username;
    _currentPage = 0;
    _hasMore = true;
    _isFetchingMore = false;
    _members = [];
    ref.invalidateSelf();
  }

  Future<void> loadMore() async {
    if (!_hasMore || _isFetchingMore) return;

    _isFetchingMore = true;
    state = AsyncValue.data(MemberListState.loadingMore(_members));
    await _fetchNextPage();
    _isFetchingMore = false;
  }

  Future<void> _fetchNextPage() async {
    final result = await ref
        .read(memberRepositoryProvider)
        .getMembers(
          fanHubId: fanHubId,
          pageNo: _currentPage,
          pageSize: _pageSize,
          sortBy: 'joinedAt',
          username: _searchUsername,
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
          state = AsyncValue.data(const MemberListState.empty());
        } else {
          state = AsyncValue.data(MemberListState.ready(List.from(_members)));
        }
      },
    );
  }

  Future<void> banMember(BanRequest banRequest) async {
    final result = await ref
        .read(memberBanRepositoryProvider)
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
}
