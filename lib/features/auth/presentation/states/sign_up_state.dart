import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/error/failures.dart';

part 'sign_up_state.freezed.dart';

/// Form data for sign up (persisted across steps)
@freezed
abstract class SignUpForm with _$SignUpForm {
  const factory SignUpForm({
    // Step 1 fields
    required String username,
    required String email,
    required String password,
    String? usernameError,
    String? emailError,
    String? passwordError,
    
    // Step 2 (OTP)
    required String otp,
    String? otpError,
    
    // Step 3 fields
    required String displayName,
    required String confirmPassword,
    String? displayNameError,
    String? confirmPasswordError,
  }) = _SignUpForm;
  
  /// Create empty form
  factory SignUpForm.empty() => const SignUpForm(
    username: '',
    email: '',
    password: '',
    otp: '',
    displayName: '',
    confirmPassword: '',
  );
}

/// State for multi-step sign up flow
@freezed
sealed class SignUpState with _$SignUpState {
  /// Initial state - For choosing signup method(phone, email,etc)
  // const factory SignUpState.initial() = _Initial;

  /// Initial state - Step 1: Username, Email, Password
  const factory SignUpState.step1(SignUpForm form) = _Step1;
  
  /// Step 2: OTP verification
  const factory SignUpState.step2Otp(SignUpForm form) = _Step2Otp;
  
  /// Step 3: Display Name, Confirm Password, and remaining fields
  const factory SignUpState.step3Remaining(SignUpForm form) = _Step3Remaining;
  
  /// Submitting sign up request
  const factory SignUpState.submitting(SignUpForm form) = _Submitting;
  
  /// Sign up successful
  const factory SignUpState.success() = _Success;
  
  /// Error occurred (with form data to restore)
  const factory SignUpState.error(SignUpForm form, String message, Failure failure) = _Error;
}