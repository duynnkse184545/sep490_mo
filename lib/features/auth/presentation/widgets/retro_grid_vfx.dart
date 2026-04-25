import 'package:flutter/material.dart';

class RetroGridVfx extends StatefulWidget {
  const RetroGridVfx({super.key});

  @override
  State<RetroGridVfx> createState() => _RetroGridVfxState();
}

class _RetroGridVfxState extends State<RetroGridVfx> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Faster speed to match forFlutter
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ClipRect(
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001) // Perspective
              ..rotateX(-1.1), // Ceiling perspective
            alignment: Alignment.bottomCenter, // Pivot at horizon
            child: OverflowBox(
              maxWidth: MediaQuery.of(context).size.width * 5,
              maxHeight: 1500,
              alignment: Alignment.bottomCenter,
              child: CustomPaint(
                size: Size(MediaQuery.of(context).size.width * 5, 1200),
                painter: _GridPainter(_controller.value),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _GridPainter extends CustomPainter {
  final double progress;
  _GridPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = const Color(0xFF909090).withValues(alpha: 0.3) // Match forFlutter exactly
      ..strokeWidth = 2.0;

    const double gridSize = 100.0;
    final double offset = progress * gridSize;

    // Horizontal lines (Moving)
    for (double y = -gridSize; y <= size.height + gridSize; y += gridSize) {
      canvas.drawLine(
        Offset(0, y + offset),
        Offset(size.width, y + offset),
        paint,
      );
    }

    // Vertical lines (Stationary & Symmetrical)
    final double centerX = size.width / 2;
    for (double x = 0; x <= size.width / 2; x += gridSize) {
      // Right side
      canvas.drawLine(
        Offset(centerX + x, -gridSize),
        Offset(centerX + x, size.height + gridSize),
        paint,
      );
      // Left side
      canvas.drawLine(
        Offset(centerX - x, -gridSize),
        Offset(centerX - x, size.height + gridSize),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_GridPainter oldDelegate) => true;
}
