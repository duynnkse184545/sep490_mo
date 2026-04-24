import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/core/widgets/retro_text_field.dart';
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

    // Initialize with existing OTP (for back navigation)
    useEffect(() {
      otpController.text = form.otp;
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
                  "Verify OTP",
                  style: GoogleFonts.monda(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF323232),
                  ),
                ),
                const SizedBox(height: 12),
                const StepIndicatorWidget(current: 2, total: 3),
                const SizedBox(height: 24),

                Text(
                  'Enter the OTP sent to ${form.email}',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: const Color(0xFF323232),
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 32),

                // OTP field
                _buildLabel("OTP Code"),
                const SizedBox(height: 8),
                RetroTextField(
                  hintText: '------',
                  controller: otpController,
                  enabled: !isLoading.value,
                  keyboardType: TextInputType.number,
                ),
                if (form.otpError != null) _buildError(form.otpError!),

                const SizedBox(height: 16),

                // Resend OTP button
                GestureDetector(
                  onTap: isLoading.value
                      ? null
                      : () async {
                          isLoading.value = true;
                          await controller.resendOtp();
                          isLoading.value = false;
                        },
                  child: Text(
                    isLoading.value ? 'Sending...' : 'Resend OTP',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: AppColors.primary,
                    ),
                  ),
                ),

                const SizedBox(height: 32),

                // Next button
                _buildRetroButton(
                  text: 'Verify!',
                  isLoading: isLoading.value,
                  onTap: () async {
                    isLoading.value = true;
                    await controller.submitStep2(
                      otp: otpController.text,
                    );
                    isLoading.value = false;
                  },
                ),

                const SizedBox(height: 24),

                // Back button
                GestureDetector(
                  onTap: controller.goBackToStep1,
                  child: Text(
                    'Back to Previous Step',
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
