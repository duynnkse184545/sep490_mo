import 'package:flutter/material.dart';

class GlowButton extends StatefulWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const GlowButton({
    super.key,
    required this.child,
    this.onPressed,
  });

  @override
  State<GlowButton> createState() => _GlowButtonState();
}

class _GlowButtonState extends State<GlowButton> with SingleTickerProviderStateMixin {
  Offset _mousePos = const Offset(100, 100);
  bool _isHovered = false;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      onHover: (event) {
        setState(() {
          _mousePos = event.localPosition;
        });
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF808080),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // The Radial Glow Effect
                Positioned(
                  left: _isHovered ? _mousePos.dx - 100 : null,
                  top: _isHovered ? _mousePos.dy - 100 : null,
                  child: AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                      // Logic for moving when NOT hovered
                      double xOffset = _isHovered ? 0 : -100 + (_animationController.value * -150);
                      double yOffset = _isHovered ? 0 : -50 + (_animationController.value * -150);

                      return Transform.translate(
                        offset: _isHovered ? Offset.zero : Offset(xOffset, yOffset),
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: RadialGradient(
                              colors: [
                                Color(0xFF75FBC0),
                                Color(0xFF75D5FB),
                                Colors.transparent,
                              ],
                              stops: [0.0, 0.3, 0.7],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Button Text/Content
                Center(
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                    child: widget.child,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
