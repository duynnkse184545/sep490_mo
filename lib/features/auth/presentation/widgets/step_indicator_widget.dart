import 'package:flutter/material.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';

class StepIndicatorWidget extends StatelessWidget {
  final int current;
  final int total;

  const StepIndicatorWidget({
    super.key,
    required this.current,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        total,
        (index) => Container(
          width: 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index + 1 <= current ? AppColors.primary : Colors.grey.shade300,
          ),
        ),
      ),
    );
  }
}
