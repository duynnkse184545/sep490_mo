import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/member/data/providers/member_providers.dart';
import 'package:sep490_mo/features/member/presentation/states/member_detail_state.dart';

part 'member_detail_controller.g.dart';

@riverpod
class MemberDetailController extends _$MemberDetailController {
  @override
  Future<MemberDetailState> build({required int fanHubMemberId}) async {
    final result = await ref
        .read(memberRepositoryProvider)
        .getMemberDetail(fanHubMemberId)
        .run();

    return result.fold(
      (failure) => throw failure,
      (member) => MemberDetailState.loaded(member),
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    ref.invalidateSelf();
  }
}
