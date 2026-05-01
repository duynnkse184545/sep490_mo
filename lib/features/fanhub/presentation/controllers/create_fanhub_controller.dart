import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';
import 'package:sep490_mo/features/fanhub/data/providers/fanhub_providers.dart';
import 'package:sep490_mo/features/fanhub/presentation/controllers/fanhub_owner_controller.dart';
import 'package:sep490_mo/features/fanhub/presentation/states/create_fanhub_state.dart';

part 'create_fanhub_controller.g.dart';

@riverpod
class CreateFanHubController extends _$CreateFanHubController {
  @override
  CreateFanHubState build() {
    return const CreateFanHubState.initial();
  }

  Future<void> createFanHub(
    CreateFanHubRequest request, {
    String? bannerPath,
    String? avatarPath,
  }) async {
    state = const CreateFanHubState.loading();

    final result = await ref
        .read(fanHubRepositoryProvider)
        .createFanHub(
          request: request,
          bannerPath: bannerPath,
          avatarPath: avatarPath,
        )
        .run();

    result.fold(
      (failure) => state = CreateFanHubState.error(failure.message),
      (_) {
        state = const CreateFanHubState.success();
        ref.invalidate(fanHubOwnerControllerProvider);
      },
    );
  }

  void reset() {
    state = const CreateFanHubState.initial();
  }
}
