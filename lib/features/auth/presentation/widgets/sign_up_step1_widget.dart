import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/auth/presentation/controllers/sign_up_controller.dart';
import 'package:sep490_mo/features/auth/presentation/states/sign_up_state.dart';
import 'package:sep490_mo/features/auth/presentation/widgets/step_indicator_widget.dart';

class SignUpStep1Widget extends HookWidget {
  final SignUpForm form;
  final SignUpController controller;
  final bool obscurePassword;
  final VoidCallback onTogglePassword;

  const SignUpStep1Widget({
    super.key,
    required this.form,
    required this.controller,
    required this.obscurePassword,
    required this.onTogglePassword,
  });

  @override
  Widget build(BuildContext context) {
    // Controllers for Step 1 fields - auto-disposed by hooks
    final usernameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    // Local loading state for button
    final isLoading = useState(false);

    // Initialize controllers with form data (for back navigation)
    useEffect(() {
      usernameController.text = form.username;
      emailController.text = form.email;
      passwordController.text = form.password;
      return null;
    }, []);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 32),

          // Progress indicator
          const StepIndicatorWidget(current: 1, total: 3),

          const SizedBox(height: 32),

          // Icon and title
          const Icon(Icons.person_add_outlined, size: 80, color: AppColors.primary),
          const SizedBox(height: 16),
          Text(
            'Create Account',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Enter your details to get started',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 48),

          // Username field
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
              labelText: 'Username',
              hintText: 'Choose a username',
              prefixIcon: const Icon(Icons.person_outline),
              border: const OutlineInputBorder(),
              errorText: form.usernameError,
            ),
          ),

          const SizedBox(height: 16),

          // Email field
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              prefixIcon: const Icon(Icons.email_outlined),
              border: const OutlineInputBorder(),
              errorText: form.emailError,
            ),
          ),

          const SizedBox(height: 16),

          // Password field
          TextField(
            controller: passwordController,
            obscureText: obscurePassword,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Create a password',
              prefixIcon: const Icon(Icons.lock_outline),
              border: const OutlineInputBorder(),
              errorText: form.passwordError,
              suffixIcon: IconButton(
                icon: Icon(
                  obscurePassword ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: onTogglePassword,
              ),
            ),
          ),

          const SizedBox(height: 32),

          // Next button with local loading state
          SizedBox(
            height: 48,
            child: ElevatedButton(
              onPressed: isLoading.value
                  ? null
                  : () async {
                      isLoading.value = true;
                      await controller.submitStep1(
                        username: usernameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      isLoading.value = false;
                    },
              child: isLoading.value
                  ? const SmallLoader()
                  : const Text('Next: Verify OTP'),
            ),
          ),

          const SizedBox(height: 16),

          // Back to Sign In
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/sign-in');
            },
            child: const Text('Already have an account? Sign In'),
          ),
        ],
      ),
    );
  }
}
