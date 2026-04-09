import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/user/data/providers/user_providers.dart';
import 'package:sep490_mo/features/user/presentation/states/user_profile_state.dart';

part 'user_profile_controller.g.dart';

@riverpod
class UserProfileController extends _$UserProfileController {
  @override
  Future<UserProfileState> build({required int userId}) async {
    final result = await ref
        .read(userRepositoryProvider)
        .getCurrentUser(userId)
        .run();

    return result.fold(
      (failure) => UserProfileState.error(failure.message),
      (user) => UserProfileState.loaded(user),
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}
