import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// App theme configuration - Based on CSS design system
class AppTheme {
  // Transition duration
  static const Duration transDur = Duration(milliseconds: 300);
  static const Curve transTiming = Curves.easeInOut;

  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: LightColors.onPrimary,
        secondary: AppColors.secondary,
        onSecondary: LightColors.onSecondary,
        tertiary: AppColors.warning,
        onTertiary: LightColors.onPrimary,
        surface: LightColors.background,
        onSurface: LightColors.text,
        surfaceContainer: LightColors.surface,
        surfaceContainerHigh: LightColors.appBarBg,
        outline: LightColors.border,
        onSurfaceVariant: LightColors.textSecondary,
        error: AppColors.error,
        onError: LightColors.onPrimary,
      ),
      scaffoldBackgroundColor: LightColors.background,
      appBarTheme: const AppBarTheme(
        backgroundColor: LightColors.appBarBg,
        foregroundColor: LightColors.appBarFg,
        elevation: 0,
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: LightColors.border),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: LightColors.inputFill,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: LightColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: LightColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.error),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: LightColors.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: LightColors.onPrimary,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: LightColors.chipBg,
        labelStyle: const TextStyle(color: LightColors.text),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      // TODO: Uncomment textTheme below when ready to use Google Fonts (Work Sans)
      // textTheme: GoogleFonts.workSansTextTheme(
      //   TextTheme(
      //     headlineLarge: TextStyle(
      //       fontSize: 32,
      //       fontWeight: FontWeight.bold,
      //       color: LightColors.text,
      //     ),
      //     headlineMedium: TextStyle(
      //       fontSize: 24,
      //       fontWeight: FontWeight.bold,
      //       color: LightColors.text,
      //     ),
      //     headlineSmall: TextStyle(
      //       fontSize: 20,
      //       fontWeight: FontWeight.bold,
      //       color: LightColors.text,
      //     ),
      //     bodyLarge: TextStyle(
      //       fontSize: 16,
      //       color: LightColors.text,
      //     ),
      //     bodyMedium: TextStyle(
      //       fontSize: 14,
      //       color: LightColors.text,
      //     ),
      //     labelLarge: TextStyle(
      //       fontSize: 14,
      //       fontWeight: FontWeight.w600,
      //       color: LightColors.text,
      //     ),
      //   ),
      // ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: LightColors.text,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: LightColors.text,
        ),
        headlineSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: LightColors.text,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: LightColors.onPrimary,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: LightColors.text,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: LightColors.text,
        ),
      ),
    );
  }

  // Dark theme - Ready for implementation
  // Uncomment and adjust when dark theme is implemented in web version
  /*
  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: DarkColors.background,
        error: AppColors.error,
      ),
      scaffoldBackgroundColor: DarkColors.background,
      appBarTheme: const AppBarTheme(
        backgroundColor: DarkColors.appBarBg,
        foregroundColor: DarkColors.appBarFg,
        elevation: 0,
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: DarkColors.border),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: DarkColors.inputFill,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: DarkColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: DarkColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.error),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: DarkColors.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: DarkColors.onPrimary,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: DarkColors.chipBg,
        labelStyle: const TextStyle(color: DarkColors.text),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: DarkColors.text,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: DarkColors.text,
        ),
        headlineSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: DarkColors.text,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: DarkColors.text,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: DarkColors.text,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: DarkColors.text,
        ),
      ),
    );
  }
  */
}
