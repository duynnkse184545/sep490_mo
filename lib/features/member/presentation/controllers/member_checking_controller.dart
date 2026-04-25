import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/providers/member_providers.dart';

part 'member_checking_controller.g.dart';

@riverpod
class MemberCheckingController extends _$MemberCheckingController {
  @override
  Future<MemberCheckingResponse> build({required int fanHubId}) async {
    final result = await ref.read(memberRepositoryProvider).isMember(fanHubId).run();
    return result.fold(
      (failure) => throw failure,
      (response) => response,
    );
  }

  Future<void> join() async {
    state = const AsyncValue.loading();
    
    final result = await ref.read(memberRepositoryProvider).joinFanHub(fanHubId).run();
    
    await result.fold(
      (failure) {
        state = AsyncValue.error(failure, StackTrace.current);
      },
      (_) async {
        ref.invalidateSelf();
        await future;
      },
    );
  }

  Future<void> leave() async {
    state = const AsyncValue.loading();
    
    final result = await ref.read(memberRepositoryProvider).leaveFanHub(fanHubId).run();
    
    await result.fold(
      (failure) {
        state = AsyncValue.error(failure, StackTrace.current);
      },
      (_) async {
        ref.invalidateSelf();
        await future;
      },
    );
  }
}
