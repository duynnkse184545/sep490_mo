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
import '../widgets/retro_grid_vfx.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signUpControllerProvider);
    final controller = ref.read(signUpControllerProvider.notifier);

    // Local UI state (password visibility)
    final obscurePassword = useState(true);


    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(child: RetroGridVfx()),
          SafeArea(
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
        ],
      ),
    );
  }
}
