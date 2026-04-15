import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';
import 'package:sep490_mo/features/member/data/providers/member_moderation_providers.dart';
import 'package:sep490_mo/features/member/presentation/states/member_moderation_state.dart';

part 'member_moderation_controller.g.dart';

@riverpod
class MemberModerationController extends _$MemberModerationController {
  static const int _pageSize = 20;

  int _currentPage = 0;
  bool _hasMore = true;
  bool _isFetchingMore = false;
  List<MemberWithReports> _members = [];

  @override
  Future<MemberModerationState> build({
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
      MemberModerationState.loadingMore(List.from(_members)),
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
        .getMemberWithReports(
          fanHubId: fanHubId,
          pageNo: _currentPage,
          pageSize: _pageSize,
          sortBy: 'createdAt',
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
          state = const AsyncValue.data(MemberModerationState.empty());
        } else {
          state = AsyncValue.data(
            MemberModerationState.ready(List.from(_members)),
          );
        }
      },
    );
  }

  Future<void> approveMember(int memberId) async {
    final status = MemberStatus.joined;
    final result = await ref
        .read(memberModerationRepositoryProvider)
        .reviewMember(memberId, status)
        .run();

    result.fold(
      (failure) {
        // Silently fail - could add snackbar notification
      },
      (_) {
        refresh();
      },
    );
  }

  Future<void> rejectMember(int memberId) async {
    final status = MemberStatus.rejected;
    final result = await ref
        .read(memberModerationRepositoryProvider)
        .reviewMember(memberId, status)
        .run();

    result.fold(
      (failure) {
        // Silently fail - could add snackbar notification
      },
      (_) {
        refresh();
      },
    );
  }

  Future<void> resolveReport(int reportId, String resolveMessage) async {
    final result = await ref
        .read(memberModerationRepositoryProvider)
        .resolveReport(reportId, resolveMessage)
        .run();

    result.fold(
      (failure) {
        // Silently fail - could add snackbar notification
      },
      (_) {
        refresh();
      },
    );
  }

  Future<void> resolveReportsBulk(List<int> reportIds, String resolveMessage) async {
    final result = await ref
        .read(memberModerationRepositoryProvider)
        .resolveReportBulk(reportIds, resolveMessage)
        .run();

    result.fold(
      (failure) {
        // Silently fail - could add snackbar notification
      },
      (_) {
        refresh();
      },
    );
  }
}
