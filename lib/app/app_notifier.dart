import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/core/services/token_service.dart';
import 'package:sep490_mo/features/auth/presentation/controllers/auth_controller.dart';
import 'package:sep490_mo/features/user/data/repositories/user_repository.dart';
import 'package:sep490_mo/features/user/data/providers/user_providers.dart';
import '../features/auth/presentation/states/auth_state.dart';
import 'app_state.dart';

part 'app_notifier.g.dart';

@riverpod
class AppNotifier extends _$AppNotifier {
  late final UserRepository _userRepository;
  late final TokenService _tokenService;

  @override
  AppState build() {
    _userRepository = ref.read(userRepositoryProvider);
    _tokenService = ref.read(tokenServiceProvider);
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
    final userId = await _tokenService.getUserId();
    if (userId == null) {
      state = const AppState.unauthenticated();
      return;
    }
    final result = await _userRepository.getCurrentUser(userId).run();
    result.fold(
          (failure) => state = AppState.error(failure.toString()),
          (user) => state = AppState.ready(user),
    );
  }
}