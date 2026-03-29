import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/failure_handler.dart';
import '../../../../core/utils/validators.dart';
import '../../data/models/auth_models.dart';
import '../../data/repositories/auth_repository.dart';
import '../states/sign_in_state.dart';

import 'auth_providers.dart';

part 'sign_in_controller.g.dart';

@riverpod
class SignInController extends _$SignInController {
  late final AuthRepository _authRepository;

  // Store credentials for retry functionality
  String? _lastUsername;
  String? _lastPassword;

  @override
  SignInState build() {
    _authRepository = ref.read(authRepositoryProvider);
    return const SignInState.initial();
  }

  /// Sign in with username and password
  /// Returns true if successful, false otherwise
  /// The UI should watch the state for loading/success/error
  Future<bool> signIn(String username, String password) async {
    // Validate username (required only)
    final usernameError = Validators.validateRequired(username, 'Username');
    if (usernameError != null) {
      state = SignInState.error(
        usernameError,
        const Failure.validationFailure('Username is required'),
      );
      return false;
    }

    // Validate password (required only)
    final passwordError = Validators.validateRequired(password, 'Password');
    if (passwordError != null) {
      state = SignInState.error(
        passwordError,
        const Failure.validationFailure('Password is required'),
      );
      return false;
    }

    // Store for retry
    _lastUsername = username.trim();
    _lastPassword = password;

    state = const SignInState.loading();

    final request = SignInRequest(
      username: _lastUsername!,
      password: _lastPassword!,
    );

    final result = await _authRepository.signIn(request).run();

    return result.fold(
      (failure) {
        // Use FailureHandler to get user-friendly message
        final errorMessage = FailureHandler.getErrorMessage(failure);
        state = SignInState.error(errorMessage, failure);
        return false;
      },
      (_) {
        state = const SignInState.success();
        return true;
      },
    );
  }

  /// Retry last sign in attempt
  Future<bool> retry() async {
    if (_lastUsername != null && _lastPassword != null) {
      return signIn(_lastUsername!, _lastPassword!);
    }
    return false;
  }

  /// Reset state to initial
  void resetState() {
    state = const SignInState.initial();
    _lastUsername = null;
    _lastPassword = null;
  }
}