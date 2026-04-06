import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/auth/presentation/controllers/sign_up_controller.dart';
import 'package:sep490_mo/features/auth/presentation/states/sign_up_state.dart';
import 'package:sep490_mo/features/auth/presentation/widgets/step_indicator_widget.dart';

class SignUpStep2Widget extends HookWidget {
  final SignUpForm form;
  final SignUpController controller;

  const SignUpStep2Widget({
    super.key,
    required this.form,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final otpController = useTextEditingController();

    // Local loading state for buttons
    final isLoading = useState(false);

    // Get theme colors
    final colorScheme = Theme.of(context).colorScheme;

    // Initialize with existing OTP (for back navigation)
    useEffect(() {
      otpController.text = form.otp;
      return null;
    }, []);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 32),

          // Progress indicator
          const StepIndicatorWidget(current: 2, total: 3),

          const SizedBox(height: 48),

          // Icon and title
          Icon(Icons.sms_outlined, size: 80, color: colorScheme.primary),
          const SizedBox(height: 16),
          Text(
            'Verify OTP',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Enter the OTP sent to ${form.email}',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 48),

          // OTP field
          TextField(
            controller: otpController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, letterSpacing: 8),
            maxLength: 6,
            decoration: InputDecoration(
              labelText: 'OTP',
              hintText: '------',
              prefixIcon: const Icon(Icons.pin_outlined),
              border: const OutlineInputBorder(),
              errorText: form.otpError,
              counterText: '', // Hide character counter
            ),
          ),

          const SizedBox(height: 16),

          // Resend OTP button with loading
          TextButton.icon(
            onPressed: isLoading.value
                ? null
                : () async {
                    isLoading.value = true;
                    await controller.resendOtp();
                    isLoading.value = false;
                  },
            icon: isLoading.value
                ? const SizedBox(
                    width: 14,
                    height: 14,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.refresh, size: 16),
            label: Text(isLoading.value ? 'Sending...' : 'Resend OTP'),
          ),

          const SizedBox(height: 32),

          // Next button with loading
          SizedBox(
            height: 48,
            child: ElevatedButton(
              onPressed: isLoading.value
                  ? null
                  : () async {
                      isLoading.value = true;
                      await controller.submitStep2(
                        otp: otpController.text,
                      );
                      isLoading.value = false;
                    },
              child: isLoading.value
                  ? const SmallLoader()
                  : const Text('Next: Complete Profile'),
            ),
          ),

          const SizedBox(height: 16),

          // Back button
          TextButton.icon(
            onPressed: controller.goBackToStep1,
            icon: const Icon(Icons.arrow_back, size: 16),
            label: const Text('Back to Previous Step'),
          ),
        ],
      ),
    );
  }
}
