import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/error/failure_handler.dart';
import 'package:sep490_mo/core/utils/validators.dart';
import 'package:sep490_mo/features/auth/data/models/auth_models.dart';
import 'package:sep490_mo/features/auth/presentation/states/sign_up_state.dart';

import '../../data/providers/auth_providers.dart';

part 'sign_up_controller.g.dart';

@riverpod
class SignUpController extends _$SignUpController {

  @override
  SignUpState build() {
    return SignUpState.step1(SignUpForm.empty());
  }

  // ==================== STEP 1: Username, Email, Password ====================

  /// Submit Step 1 and proceed to Step 2 (OTP)
  /// Returns true if successful (proceeds to Step 2), false if validation fails
  Future<bool> submitStep1({
    required String username,
    required String email,
    required String password,
  }) async {
    final currentForm = state.maybeWhen(
      step1: (form) => form,
      orElse: () => SignUpForm.empty(),
    );

    final usernameError = Validators.validateRequired(username, 'Username');
    final emailError = Validators.validateEmail(email);
    final passwordError = Validators.validatePassword(password);

    if (usernameError != null || emailError != null || passwordError != null) {
      state = SignUpState.step1(currentForm.copyWith(
        username: username,
        email: email,
        password: password,
        usernameError: usernameError,
        emailError: emailError,
        passwordError: passwordError,
      ));
      return false;
    }

    final result = await ref.read(authRepositoryProvider).verify(email).run();
    return result.fold(
      (failure) {
        final errorMessage = FailureHandler.getErrorMessage(failure);
        state = SignUpState.step1(currentForm.copyWith(
          username: username,
          email: email,
          password: password,
          emailError: errorMessage,
        ));
        return false;
      },
      (_) {
        state = SignUpState.step2Otp(currentForm.copyWith(
          username: username,
          email: email,
          password: password,
        ));
        return true;
      },
    );
  }

  // ==================== STEP 2: OTP ====================

  /// Submit OTP, verify with backend, then proceed to Step 3
  /// Returns true if successful (proceeds to Step 3), false if validation fails
  Future<bool> submitStep2({required String otp}) async {
    final currentForm = state.maybeWhen(
      step2Otp: (form) => form,
      orElse: () => SignUpForm.empty(),
    );

    if (otp.isEmpty) {
      state = SignUpState.step2Otp(currentForm.copyWith(
        otp: otp,
        otpError: 'OTP is required',
      ));
      return false;
    }

    // Show loading while verifying OTP — must block transition until verified
    state = SignUpState.submitting(currentForm.copyWith(otp: otp));

    // TODO: Uncomment when OTP verification is ready
    // final result = await ref.read(authRepositoryProvider).verifyOtp(currentForm.email, otp).run();
    // return result.fold(
    //   (failure) {
    //     state = SignUpState.step2Otp(currentForm.copyWith(
    //       otp: otp,
    //       otpError: 'Invalid or expired OTP',
    //     ));
    //     return false;
    //   },
    //   (_) {
    //     state = SignUpState.step3Remaining(currentForm.copyWith(otp: otp));
    //     return true;
    //   },
    // );

    // Temporary: proceed directly until OTP verification is implemented
    state = SignUpState.step3Remaining(currentForm.copyWith(otp: otp));
    return true;
  }

  /// Resend OTP — button loading handled in widget
  Future<bool> resendOtp() async {
    final currentForm = state.maybeWhen(
      step2Otp: (form) => form,
      orElse: () => null,
    );
    if (currentForm == null) return false;

    final result = await ref.read(authRepositoryProvider).verify(currentForm.email).run();
    return result.fold(
      (failure) => false,
      (_) => true,
    );
  }

  // ==================== STEP 3: Display Name, Confirm Password ====================

  /// Submit Step 3 and create account
  /// Returns true if successful, false if validation fails
  Future<bool> submitStep3({
    required String displayName,
    required String confirmPassword,
  }) async {
    final currentForm = state.maybeWhen(
      step3Remaining: (form) => form,
      orElse: () => SignUpForm.empty(),
    );

    final displayNameError = Validators.validateRequired(displayName, 'Display Name');
    final confirmPasswordError = confirmPassword != currentForm.password
        ? 'Passwords do not match'
        : null;

    if (displayNameError != null || confirmPasswordError != null) {
      state = SignUpState.step3Remaining(currentForm.copyWith(
        displayName: displayName,
        confirmPassword: confirmPassword,
        displayNameError: displayNameError,
        confirmPasswordError: confirmPasswordError,
      ));
      return false;
    }

    // ✅ Build finalForm first, use it for both state and request
    final finalForm = currentForm.copyWith(
      displayName: displayName,
      confirmPassword: confirmPassword,
    );
    state = SignUpState.submitting(finalForm);

    final request = SignUpRequest(
      email: finalForm.email,
      password: finalForm.password,
      username: finalForm.username,
      displayName: finalForm.displayName,
      translateLanguage: 'en', // TODO: Get from app settings
      otp: finalForm.otp,
    );

    final result = await ref.read(authRepositoryProvider).signUp(request).run();

    return result.fold(
          (failure) {
        final errorMessage = FailureHandler.getErrorMessage(failure);
        state = SignUpState.error(finalForm, errorMessage, failure);
        return false;
      },
          (user) {
        state = const SignUpState.success();
        return true;
      },
    );
  }

  // ==================== Navigation ====================

  /// Go back to Step 1 from Step 2
  void goBackToStep1() {
    state.maybeWhen(
      step2Otp: (form) => state = SignUpState.step1(form),
      orElse: () {},
    );
  }

  /// Go back to Step 2 from Step 3
  void goBackToStep2() {
    state.maybeWhen(
      step3Remaining: (form) => state = SignUpState.step2Otp(form),
      orElse: () {},
    );
  }

  /// Reset state to initial (Step 1 with empty form)
  void resetState() {
    state = SignUpState.step1(SignUpForm.empty());
  }

  /// Handle error state — return to Step 3 to retry
  void retryFromError() {
    state.maybeWhen(
      error: (form, _, _) => state = SignUpState.step3Remaining(form),
      orElse: () {},
    );
  }
}