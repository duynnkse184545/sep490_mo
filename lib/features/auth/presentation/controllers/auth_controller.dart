import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/auth/data/providers/auth_providers.dart';
import 'package:sep490_mo/features/auth/presentation/states/auth_state.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {

  @override
  AuthState build() {
    _checkAuthStatus();
    return const AuthState.initial();
  }

  /// Check authentication status on startup
  /// Uses cache-first strategy: instant if cached, fresh if stale
  Future<void> _checkAuthStatus() async {
    final result = await ref.read(authRepositoryProvider).checkAuthStatus().run();
    state = result.fold(
          (_) => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
    );
  }

  /// Sign out
  Future<void> signOut() async {
    state = const AuthState.loading();

    final result = await ref.read(authRepositoryProvider).signOut().run();
    result.fold(
          (failure) => state = AuthState.error(failure.toString()),
          (_) => state = const AuthState.unauthenticated(),
    );
  }
}