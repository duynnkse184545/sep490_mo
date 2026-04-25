import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../theme/app_colors.dart';
import '../theme/app_decorations.dart';
import 'package:google_fonts/google_fonts.dart';

class RetroWindow extends StatelessWidget {
  final double? width;
  final double? height;
  final String title;
  final Color headerColor;
  final Widget content;

  const RetroWindow({
    super.key,
    this.width,
    this.height,
    required this.title,
    this.headerColor = AppColors.windowWhite,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: width ?? 350,
          height: height ?? 200,
          constraints: const BoxConstraints(
            minWidth: 350,
            minHeight: 100,
          ),
          decoration: AppDecorations.retroWindow(headerColor: headerColor),
          child: Column(
            children: [
              // Window Header
              Container(
                height: 50,
                padding: const EdgeInsets.only(left: 20, right: 5),
                decoration: AppDecorations.windowHeader(headerColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Title
                    Expanded(
                      flex: 7,
                      child: Text(
                        title,
                        style: GoogleFonts.monda(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF555555),
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    // Mock Buttons
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _buildWindowButton('assets/icons/minimize.svg'),
                          _buildWindowButton('assets/icons/maximize.svg'),
                          _buildWindowButton('assets/icons/close.svg'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Window Content
              Expanded(
                child: content,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildWindowButton(String assetPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(5),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent, width: 0.5),
          ),
          child: SvgPicture.asset(
            assetPath,
            width: 12,
            height: 12,
            colorFilter: const ColorFilter.mode(Color(0xFF555555), BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
