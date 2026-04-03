import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/auth/presentation/controllers/sign_up_controller.dart';
import 'package:sep490_mo/features/auth/presentation/states/sign_up_state.dart';
import 'package:sep490_mo/features/auth/presentation/widgets/step_indicator_widget.dart';

class SignUpStep3Widget extends HookWidget {
  final SignUpForm form;
  final SignUpController controller;
  final bool obscurePassword;
  final VoidCallback onTogglePassword;

  const SignUpStep3Widget({
    super.key,
    required this.form,
    required this.controller,
    required this.obscurePassword,
    required this.onTogglePassword,
  });

  @override
  Widget build(BuildContext context) {
    // Controllers for Step 3 fields
    final displayNameController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    // Local loading state for button
    final isLoading = useState(false);

    // Initialize with existing data
    useEffect(() {
      displayNameController.text = form.displayName;
      confirmPasswordController.text = form.confirmPassword;
      return null;
    }, []);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 32),

          // Progress indicator
          const StepIndicatorWidget(current: 3, total: 3),

          const SizedBox(height: 32),

          // Icon and title
          const Icon(Icons.check_circle_outline, size: 80, color: AppColors.primary),
          const SizedBox(height: 16),
          Text(
            'Complete Your Profile',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Almost done! Just a few more details',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 48),

          // Display Name field
          TextField(
            controller: displayNameController,
            decoration: InputDecoration(
              labelText: 'Display Name',
              hintText: 'How should we call you?',
              prefixIcon: const Icon(Icons.badge_outlined),
              border: const OutlineInputBorder(),
              errorText: form.displayNameError,
            ),
          ),

          const SizedBox(height: 16),

          // Confirm Password field
          TextField(
            controller: confirmPasswordController,
            obscureText: obscurePassword,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              hintText: 'Re-enter your password',
              prefixIcon: const Icon(Icons.lock_outline),
              border: const OutlineInputBorder(),
              errorText: form.confirmPasswordError,
              suffixIcon: IconButton(
                icon: Icon(
                  obscurePassword ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: onTogglePassword,
              ),
            ),
          ),

          const SizedBox(height: 32),

          // Submit button with loading
          SizedBox(
            height: 48,
            child: ElevatedButton(
              onPressed: isLoading.value
                  ? null
                  : () async {
                      isLoading.value = true;
                      await controller.submitStep3(
                        displayName: displayNameController.text,
                        confirmPassword: confirmPasswordController.text,
                      );
                      // isLoading stays true during submitting state
                    },
              child: isLoading.value
                  ? const SmallLoader()
                  : const Text('Create Account'),
            ),
          ),

          const SizedBox(height: 16),

          // Back button
          TextButton.icon(
            onPressed: controller.goBackToStep2,
            icon: const Icon(Icons.arrow_back, size: 16),
            label: const Text('Back to OTP'),
          ),
        ],
      ),
    );
  }
}
