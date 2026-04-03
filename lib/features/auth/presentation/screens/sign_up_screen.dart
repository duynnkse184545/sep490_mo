import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/features/auth/presentation/controllers/sign_up_controller.dart';
import 'package:sep490_mo/features/auth/presentation/states/sign_up_state.dart';
import 'package:sep490_mo/features/auth/presentation/widgets/sign_up_step1_widget.dart';
import 'package:sep490_mo/features/auth/presentation/widgets/sign_up_step2_widget.dart';
import 'package:sep490_mo/features/auth/presentation/widgets/sign_up_step3_widget.dart';
import 'package:sep490_mo/features/auth/presentation/widgets/sign_up_submitting_widget.dart';
import 'package:sep490_mo/features/auth/presentation/widgets/sign_up_success_widget.dart';
import 'package:sep490_mo/features/auth/presentation/widgets/sign_up_error_widget.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signUpControllerProvider);
    final controller = ref.read(signUpControllerProvider.notifier);

    // Local UI state (password visibility)
    final obscurePassword = useState(true);

    // Get current step for app bar indicator (using maybeWhen to avoid generated type references)
    final currentStep = state.maybeWhen(
      step1: (_) => 1,
      step2Otp: (_) => 2,
      step3Remaining: (_) => 3,
      orElse: () => 0,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        actions: [
          // Show step indicator in app bar
          if (currentStep > 0)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Step $currentStep of 3',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
        ],
      ),
      body: SafeArea(
        child: state.when(
          // Step 1: Username, Email, Password
          step1: (form) => SignUpStep1Widget(
            form: form,
            controller: controller,
            obscurePassword: obscurePassword.value,
            onTogglePassword: () => obscurePassword.value = !obscurePassword.value,
          ),

          // Step 2: OTP
          step2Otp: (form) => SignUpStep2Widget(
            form: form,
            controller: controller,
          ),

          // Step 3: Display Name, Confirm Password
          step3Remaining: (form) => SignUpStep3Widget(
            form: form,
            controller: controller,
            obscurePassword: obscurePassword.value,
            onTogglePassword: () => obscurePassword.value = !obscurePassword.value,
          ),

          // Submitting (final API call - show full loader)
          submitting: (form) => SignUpSubmittingWidget(form: form),

          // Success
          success: () => const SignUpSuccessWidget(),

          // Error
          error: (form, message, failure) => SignUpErrorWidget(
            form: form,
            message: message,
            failure: failure,
            controller: controller,
            obscurePassword: obscurePassword.value,
            onTogglePassword: () => obscurePassword.value = !obscurePassword.value,
          ),
        ),
      ),
    );
  }
}
