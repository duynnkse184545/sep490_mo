import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/core/widgets/retro_text_field.dart';
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
                  "Final Step",
                  style: GoogleFonts.monda(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF323232),
                  ),
                ),
                const SizedBox(height: 12),
                const StepIndicatorWidget(current: 3, total: 3),
                const SizedBox(height: 24),

                // Display Name field
                _buildLabel("Display Name"),
                const SizedBox(height: 8),
                RetroTextField(
                  hintText: 'How should we call you?',
                  controller: displayNameController,
                  enabled: !isLoading.value,
                ),
                if (form.displayNameError != null) _buildError(form.displayNameError!),

                const SizedBox(height: 16),

                // Confirm Password field
                _buildLabel("Confirm Password"),
                const SizedBox(height: 8),
                RetroTextField(
                  hintText: 'Re-enter your password',
                  controller: confirmPasswordController,
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
                if (form.confirmPasswordError != null) _buildError(form.confirmPasswordError!),

                const SizedBox(height: 32),

                // Submit button
                _buildRetroButton(
                  text: 'Finish!',
                  isLoading: isLoading.value,
                  onTap: () async {
                    isLoading.value = true;
                    await controller.submitStep3(
                      displayName: displayNameController.text,
                      confirmPassword: confirmPasswordController.text,
                    );
                  },
                ),

                const SizedBox(height: 24),

                // Back button
                GestureDetector(
                  onTap: controller.goBackToStep2,
                  child: Text(
                    'Back to OTP Verification',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.black54,
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
