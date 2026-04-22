import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/fanhub/data/providers/fanhub_providers.dart';
import 'package:sep490_mo/features/fanhub/presentation/states/fanhub_detail_state.dart';

part 'fanhub_detail_controller.g.dart';

@riverpod
class FanHubDetailController extends _$FanHubDetailController {
  @override
  Future<FanHubDetailState> build({required String subdomain}) async {
    final result = await ref
        .read(fanHubRepositoryProvider)
        .getFanHubBySubdomain(subdomain)
        .run();

    return result.fold(
      (failure) => throw failure,
      (fanHub) => FanHubDetailState.loaded(fanHub),
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    ref.invalidateSelf();
  }
}
