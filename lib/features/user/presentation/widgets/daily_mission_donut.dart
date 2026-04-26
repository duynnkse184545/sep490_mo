import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';

class DailyMissionDonut extends StatelessWidget {
  final int count;
  final int maxCount;
  final Color? color;

  const DailyMissionDonut({
    super.key,
    required this.count,
    required this.maxCount,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: CustomPaint(
        painter: _DonutPainter(
          progress: (count / maxCount).clamp(0.0, 1.0),
          color: color ?? AppColors.primary,
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "$count",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF323232),
                ),
              ),
              Text(
                "/$maxCount",
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DonutPainter extends CustomPainter {
  final double progress;
  final Color color;

  _DonutPainter({required this.progress, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2) - 4;
    const strokeWidth = 8.0;

    // Background Ring with Retro Border
    final ringPaint = Paint()
      ..color = const Color(0xFFEEEEEE)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, ringPaint);
    
    // Border for the background ring
    final borderPaint = Paint()
      ..color = AppColors.border.withValues(alpha: 0.1)
      ..strokeWidth = strokeWidth + 2
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, borderPaint);

    // Progress Segment
    final segmentPaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    const double startAngle = -pi / 2;
    double sweepAngle = 2 * pi * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      segmentPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
