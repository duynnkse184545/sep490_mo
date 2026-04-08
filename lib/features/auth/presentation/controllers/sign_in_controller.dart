import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/error/failure_handler.dart';
import 'package:sep490_mo/core/error/failures.dart';
import 'package:sep490_mo/core/utils/validators.dart';
import 'package:sep490_mo/features/auth/data/models/auth_models.dart';
import 'package:sep490_mo/features/auth/presentation/controllers/auth_controller.dart';
import 'package:sep490_mo/features/auth/presentation/states/sign_in_state.dart';


import '../../data/providers/auth_providers.dart';

part 'sign_in_controller.g.dart';

@riverpod
class SignInController extends _$SignInController {

  // Store credentials for retry functionality
  String? _lastUsername;
  String? _lastPassword;

  @override
  SignInState build() {
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

    final result = await ref.read(authRepositoryProvider).signIn(request).run();

    return result.fold(
      (failure) {
        // Use FailureHandler to get user-friendly message
        final errorMessage = FailureHandler.getErrorMessage(failure);
        state = SignInState.error(errorMessage, failure);
        return false;
      },
      (_) async {
        state = const SignInState.success();
        await ref.read(authControllerProvider.notifier).setAuthenticated();
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