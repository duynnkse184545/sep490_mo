import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/auth/presentation/controllers/auth_controller.dart';
import 'package:sep490_mo/features/user/data/repositories/user_repository.dart';
import 'package:sep490_mo/features/user/data/providers/user_providers.dart';
import '../features/auth/presentation/states/auth_state.dart';
import 'app_state.dart';

part 'app_notifier.g.dart';

@riverpod
class AppNotifier extends _$AppNotifier {
  late final UserRepository _userRepository;

  @override
  AppState build() {
    _userRepository = ref.read(userRepositoryProvider);
    ref.listen(authControllerProvider, (previous, next) {
      next.whenOrNull(
        authenticated: () => _onAuthenticated(),
        unauthenticated: () => state = const AppState.unauthenticated(),
      );
    });
    return const AppState.initial();
  }

  Future<void> _onAuthenticated() async {
    state = const AppState.loading();
    final result = await _userRepository.getCurrentUser().run();
    result.fold(
          (failure) => state = AppState.error(failure.toString()),
          (user) => state = AppState.ready(user),
    );
  }
}