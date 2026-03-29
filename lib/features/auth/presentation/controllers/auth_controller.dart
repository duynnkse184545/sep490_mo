import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/auth/data/repositories/auth_repository.dart';
import 'package:sep490_mo/features/auth/presentation/controllers/auth_providers.dart';
import 'package:sep490_mo/features/auth/presentation/states/auth_state.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  late final AuthRepository _authRepository;

  @override
  AuthState build() {
    _authRepository = ref.read(authRepositoryProvider);
    _checkAuthStatus();
    return const AuthState.initial();
  }

  /// Check authentication status on startup
  /// Uses cache-first strategy: instant if cached, fresh if stale
  Future<void> _checkAuthStatus() async {
    final result = await _authRepository.getCurrentUser().run();
    state = result.fold(
          (_) => const AuthState.unauthenticated(),
          AuthState.authenticated,
    );
  }

  /// Sign out
  Future<void> signOut() async {
    state = const AuthState.loading();

    final result = await _authRepository.signOut().run();
    result.fold(
          (failure) => state = AuthState.error(failure.toString()),
          (_) => state = const AuthState.unauthenticated(),
    );
  }

  /// Refresh user data (force refresh from server)
  Future<void> refreshUser() async {
    final result = await _authRepository.getCurrentUser(forceRefresh: true).run();
    result.fold(
          (failure) => state = AuthState.error(failure.toString()),
          (user) => state = AuthState.authenticated(user),
    );
  }

  /// Update authentication state (called after sign in/up)
  void setAuthenticated(User user) {
    state = AuthState.authenticated(user);
  }

  /// Get current user (null if not authenticated)
  User? get currentUser {
    return state.maybeWhen(
      authenticated: (user) => user,
      orElse: () => null,
    );
  }
}