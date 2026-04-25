import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class RetroTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;
  final bool isMultiline;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool enabled;

  const RetroTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isPassword = false,
    this.isMultiline = false,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: enabled ? Colors.white : Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(
            color: AppColors.border,
            offset: Offset(4, 4),
            blurRadius: 0,
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        enabled: enabled,
        obscureText: isPassword,
        maxLines: isMultiline ? null : 1,
        minLines: isMultiline ? 3 : 1,
        keyboardType: keyboardType,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Color(0xFF323232),
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: const Color(0xFF323232).withValues(alpha: 0.5),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          border: InputBorder.none,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
