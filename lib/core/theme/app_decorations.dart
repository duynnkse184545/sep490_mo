import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppDecorations {
  static const double borderWidth = 3.0;
  static const double blockShadowOffset = 10.0;

  static BoxDecoration retroWindow({required Color headerColor}) {
    return BoxDecoration(
      color: Colors.white,
      border: Border.all(color: AppColors.border, width: borderWidth),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: AppColors.border,
          offset: Offset(blockShadowOffset, blockShadowOffset),
          blurRadius: 0,
        ),
      ],
    );
  }

  static BoxDecoration windowHeader(Color color) {
    return BoxDecoration(
      color: color,
      border: const Border(
        bottom: BorderSide(color: AppColors.border, width: borderWidth),
      ),
    );
  }
}
