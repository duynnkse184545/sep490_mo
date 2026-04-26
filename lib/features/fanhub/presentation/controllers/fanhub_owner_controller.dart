import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';
import 'package:sep490_mo/features/fanhub/data/providers/fanhub_providers.dart';

part 'fanhub_owner_controller.g.dart';

@riverpod
class FanHubOwnerController extends _$FanHubOwnerController {
  @override
  Future<FanHub?> build() async {
    final result = await ref.read(fanHubRepositoryProvider).getMyHubAsOwner().run();
    return result.fold(
      (failure) => throw failure,
      (hub) => hub,
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    ref.invalidateSelf();
  }
}
