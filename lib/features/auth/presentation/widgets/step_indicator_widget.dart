import 'package:flutter/material.dart';

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
    final colorScheme = Theme.of(context).colorScheme;

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
            color: index + 1 <= current ? colorScheme.primary : colorScheme.outline,
          ),
        ),
      ),
    );
  }
}
