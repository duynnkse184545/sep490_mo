import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sep490_mo/core/error/failures.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/features/auth/presentation/controllers/sign_up_controller.dart';
import 'package:sep490_mo/features/auth/presentation/states/sign_up_state.dart';

class SignUpErrorWidget extends HookWidget {
  final SignUpForm form;
  final String message;
  final Failure failure;
  final SignUpController controller;
  final bool obscurePassword;
  final VoidCallback onTogglePassword;

  const SignUpErrorWidget({
    super.key,
    required this.form,
    required this.message,
    required this.failure,
    required this.controller,
    required this.obscurePassword,
    required this.onTogglePassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Error banner at top
        ErrorBanner(
          message: message,
          onRetry: _isRetryable() ? controller.retryFromError : null,
          onDismiss: controller.resetState,
        ),

        // Show Step 3 form for editing
        const Expanded(
          child: Center(
            child: Text('An error occurred. Please try again.'),
          ),
        ),
      ],
    );
  }

  bool _isRetryable() {
    return failure is! ValidationFailure;
  }
}
