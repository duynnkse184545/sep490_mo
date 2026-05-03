import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/core/widgets/retro_text_field.dart';
import 'package:sep490_mo/features/auth/presentation/controllers/auth_controller.dart';
import 'package:sep490_mo/features/auth/presentation/states/auth_state.dart';
import '../widgets/retro_grid_vfx.dart';
import '../../../../core/error/failure_handler.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/error_retry_widget.dart';
import '../../../../core/widgets/loader.dart';
import '../controllers/sign_in_controller.dart';
import '../states/sign_in_state.dart';

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Hooks
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final obscurePassword = useState(true);
    
    final signInState = ref.watch(signInControllerProvider);
    final authState = ref.watch(authControllerProvider);

    // Listen for success to navigate
    ref.listen<SignInState>(signInControllerProvider, (previous, next) {
      next.maybeWhen(
        success: () {
          HomeRoute().go(context);
        },
        orElse: () {},
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 400,
                child: RetroGridVfx(),
              ),
            ),
          ),
          SafeArea(
            child: authState.maybeWhen(
              loading: () => const Loader(),
              orElse: () => signInState.when(
                initial: () => _buildSignInForm(
                  context,
                  ref,
                  usernameController,
                  passwordController,
                  obscurePassword,
                ),
                loading: () => _buildSignInForm(
                  context,
                  ref,
                  usernameController,
                  passwordController,
                  obscurePassword,
                  isLoading: true,
                ),
                success: () => const Loader(), // Just show loader while navigating
                error: (message, failure) => Column(
                  children: [
                    ErrorBanner(
                      message: message,
                      onRetry: FailureHandler.isRetryable(failure)
                          ? () => ref
                              .read(signInControllerProvider.notifier)
                              .retry()
                          : null,
                      onDismiss: () => ref
                          .read(signInControllerProvider.notifier)
                          .resetState(),
                    ),
                    Expanded(
                      child: _buildSignInForm(
                        context,
                        ref,
                        usernameController,
                        passwordController,
                        obscurePassword,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInForm(
    BuildContext context,
    WidgetRef ref,
    TextEditingController usernameController,
    TextEditingController passwordController,
    ValueNotifier<bool> obscurePassword,
    {bool isLoading = false}
  ) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          decoration: BoxDecoration(
            color: const Color(0xFFD3D3D3),
            border: Border.all(color: AppColors.border, width: 2),
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: AppColors.border,
                offset: Offset(8, 8),
                blurRadius: 0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Log in",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontSize: 28,
                    color: const Color(0xFF323232),
                  ),
                ),
                const SizedBox(height: 12),
                SvgPicture.asset(
                  'assets/Nav -_ Logo.svg',
                  height: 60,
                ),
                const SizedBox(height: 32),

                // Username field
                _buildLabel(context, "Username"),
                const SizedBox(height: 8),
                RetroTextField(
                  hintText: 'Enter your username',
                  controller: usernameController,
                  enabled: !isLoading,
                  keyboardType: TextInputType.text,
                ),

                const SizedBox(height: 20),

                // Password field
                _buildLabel(context, "Password"),
                const SizedBox(height: 8),
                RetroTextField(
                  hintText: 'Enter your password',
                  controller: passwordController,
                  enabled: !isLoading,
                  isPassword: obscurePassword.value,
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscurePassword.value ? Icons.visibility : Icons.visibility_off,
                      size: 20,
                    ),
                    onPressed: () {
                      obscurePassword.value = !obscurePassword.value;
                    },
                  ),
                ),

                const SizedBox(height: 32),

                // Sign in button
                _buildRetroButton(
                  context: context,
                  text: 'Login!',
                  isLoading: isLoading,
                  onTap: () => _handleSignIn(
                    ref,
                    usernameController,
                    passwordController,
                  ),
                ),

                const SizedBox(height: 24),

                // Sign up link
                GestureDetector(
                  onTap: isLoading ? null : () {
                    const SignUpRoute().go(context);
                  },
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black87,
                      ),
                      children: [
                        const TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: "Sign Up",
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(BuildContext context, String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: const Color(0xFF323232),
        ),
      ),
    );
  }

  Widget _buildRetroButton({
    required BuildContext context,
    required String text,
    required VoidCallback onTap,
    bool isLoading = false,
  }) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      child: Container(
        width: 140,
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          border: Border.all(color: AppColors.border, width: 2),
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
          ],
        ),
        child: isLoading
            ? const SmallLoader()
            : Text(
                text,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF323232),
                ),
              ),
      ),
    );
  }

  Future<void> _handleSignIn(
    WidgetRef ref,
    TextEditingController usernameController,
    TextEditingController passwordController,
  ) async {
    await ref.read(signInControllerProvider.notifier).signIn(
      usernameController.text,
      passwordController.text,
    );
  }
}
