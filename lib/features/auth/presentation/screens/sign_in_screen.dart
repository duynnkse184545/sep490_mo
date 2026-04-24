import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/core/widgets/retro_text_field.dart';
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
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final obscurePassword = useState(true);
    
    final signInState = ref.watch(signInControllerProvider);

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
          const Positioned.fill(child: RetroGridVfx()),
          SafeArea(
            child: signInState.when(
              initial: () => _buildSignInForm(
                context,
                ref,
                emailController,
                passwordController,
                obscurePassword,
              ),
              loading: () => _buildSignInForm(
                context,
                ref,
                emailController,
                passwordController,
                obscurePassword,
                isLoading: true,
              ),
              success: () => const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle, size: 80, color: AppColors.success),
                    SizedBox(height: 16),
                    Text('Sign in successful!'),
                  ],
                ),
              ),
              error: (message, failure) => Column(
                children: [
                  ErrorBanner(
                    message: message,
                    onRetry: FailureHandler.isRetryable(failure)
                        ? () => ref.read(signInControllerProvider.notifier).retry()
                        : null,
                    onDismiss: () => ref.read(signInControllerProvider.notifier).resetState(),
                  ),
                  Expanded(
                    child: _buildSignInForm(
                      context,
                      ref,
                      emailController,
                      passwordController,
                      obscurePassword,
                    ),
                  ),
                ],
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
    TextEditingController emailController,
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
                  style: GoogleFonts.monda(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF323232),
                  ),
                ),
                const SizedBox(height: 12),
                SvgPicture.asset(
                  'assets/Nav -_ Logo.svg',
                  height: 60,
                ),
                const SizedBox(height: 32),

                // Email field
                _buildLabel("Email"),
                const SizedBox(height: 8),
                RetroTextField(
                  hintText: 'Enter your email',
                  controller: emailController,
                  enabled: !isLoading,
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 20),

                // Password field
                _buildLabel("Password"),
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
                  text: 'Login!',
                  isLoading: isLoading,
                  onTap: () => _handleSignIn(
                    ref,
                    emailController,
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
                      style: GoogleFonts.inter(color: Colors.black87, fontSize: 14),
                      children: [
                        const TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: "Sign Up",
                          style: GoogleFonts.inter(
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

  Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: GoogleFonts.monda(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: const Color(0xFF323232),
        ),
      ),
    );
  }

  Widget _buildRetroButton({
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
          color: Colors.white,
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
                style: GoogleFonts.monda(
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
    TextEditingController emailController,
    TextEditingController passwordController,
  ) async {
    await ref.read(signInControllerProvider.notifier).signIn(
      emailController.text,
      passwordController.text,
    );
  }
}