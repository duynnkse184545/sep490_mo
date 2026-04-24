import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/core/widgets/retro_text_field.dart';
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

    return Center(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
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
                  "Sign up",
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
                const SizedBox(height: 12),
                const StepIndicatorWidget(current: 1, total: 3),
                const SizedBox(height: 24),

                // Username field
                _buildLabel("Username"),
                const SizedBox(height: 8),
                RetroTextField(
                  hintText: 'Choose a username',
                  controller: usernameController,
                  enabled: !isLoading.value,
                ),
                if (form.usernameError != null) _buildError(form.usernameError!),

                const SizedBox(height: 16),

                // Email field
                _buildLabel("Email"),
                const SizedBox(height: 8),
                RetroTextField(
                  hintText: 'Enter your email',
                  controller: emailController,
                  enabled: !isLoading.value,
                  keyboardType: TextInputType.emailAddress,
                ),
                if (form.emailError != null) _buildError(form.emailError!),

                const SizedBox(height: 16),

                // Password field
                _buildLabel("Password"),
                const SizedBox(height: 8),
                RetroTextField(
                  hintText: 'Create a password',
                  controller: passwordController,
                  enabled: !isLoading.value,
                  isPassword: obscurePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscurePassword ? Icons.visibility : Icons.visibility_off,
                      size: 20,
                    ),
                    onPressed: onTogglePassword,
                  ),
                ),
                if (form.passwordError != null) _buildError(form.passwordError!),

                const SizedBox(height: 32),

                // Next button
                _buildRetroButton(
                  text: 'Next!',
                  isLoading: isLoading.value,
                  onTap: () async {
                    isLoading.value = true;
                    await controller.submitStep1(
                      username: usernameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                    );
                    isLoading.value = false;
                  },
                ),

                const SizedBox(height: 24),

                // Back to Sign In
                GestureDetector(
                  onTap: () {
                    const SignInRoute().go(context);
                  },
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.inter(color: Colors.black87, fontSize: 14),
                      children: [
                        const TextSpan(text: "Already have an account? "),
                        TextSpan(
                          text: "Sign In",
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

  Widget _buildError(String error) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          error,
          style: const TextStyle(color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold),
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
        width: 160,
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
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF323232),
                ),
              ),
      ),
    );
  }
}
