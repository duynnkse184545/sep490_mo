import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/user/data/models/vtuber_models.dart';
import 'package:sep490_mo/features/user/data/providers/vtuber_application_providers.dart';
import 'package:sep490_mo/features/user/presentation/states/vtuber_application_state.dart';

part 'vtuber_application_controller.g.dart';

@riverpod
class VtuberApplicationController extends _$VtuberApplicationController {
  @override
  VtuberApplicationState build() {
    return const VtuberApplicationState.initial();
  }

  Future<void> fetchMyApplication() async {
    state = const VtuberApplicationState.loading();
    
    final result = await ref.read(vtuberApplicationRepositoryProvider).getMyVtuberApplication().run();
    
    state = result.fold(
      (failure) => VtuberApplicationState.error(failure.message),
      (apps) => VtuberApplicationState.loaded(apps),
    );
  }

  Future<void> registerVtuber(VtuberRegisterRequest request) async {
    state = const VtuberApplicationState.loading();
    
    final result = await ref.read(vtuberApplicationRepositoryProvider).registerVtuber(request).run();
    
    state = result.fold(
      (failure) => VtuberApplicationState.error(failure.message),
      (_) => const VtuberApplicationState.success(),
    );
  }

  void reset() {
    state = const VtuberApplicationState.initial();
  }
}
