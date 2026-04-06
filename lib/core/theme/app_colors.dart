import 'package:flutter/material.dart';

/// App color scheme - Based on CSS design system
class AppColors {
  // Primary colors (shared across themes)
  static const Color primary = Color(0xFF24A7CB); // --color-primary
  static const Color secondary = Color(0x7637A2C0); // --color-secondary
  static const Color tertiary = Color(0x2D047D9E); // --color-tertiary

  // HSL-based colors (shared, from hue 223)
  static const Color primaryBright = Color(0xFF6BB8E0); // hsl(223,90%,70%)
  static const Color primaryTransparent = Color(0x006BB8E0); // hsla(223,90%,70%,0)

  // Status colors (Discord-style, shared)
  static const Color statusDnd = Color(0xFFED4245);
  static const Color statusIdle = Color(0xFFFAA81A);
  static const Color statusOnline = Color(0xFF3BA55D);
  static const Color statusOffline = Color(0xFF747F8D);

  // Paper & tape colors (shared)
  static const Color paper = Color(0xFFCCCCCC);
  static const Color paperDark = Color(0x47393939);
  static const Color tapeGray = Color(0xFFDBD8BE);
  static const Color tapeEdgeGray = Color(0xFFB7B49D);

  // App logic status colors (shared)
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFB00020);
  static const Color warning = Color(0xFFFF9800);
  static const Color info = Color(0xFF2196F3);

  // Transition constants (from CSS)
  static const Duration transDur = Duration(milliseconds: 300);
  static const Curve transTiming = Curves.easeInOut;

  // ===== LEGACY COMPATIBILITY (defaults to Light theme) =====
  // These will be deprecated in favor of LightColors/DarkColors classes
  static const Color bg = Color(0xFFFFFFFF);
  static const Color fg = Color(0xFF222222);
  static const Color uiBg = Color(0xFF363940);
  static const Color uiDiscordBg = Color(0xFF313337);
  static const Color uiDiscordHead = Color(0xFF000000);
  static const Color uiDiscordFore = Color(0xFF18191C);
  static const Color mainBlack = Color(0xFF000000);
  static const Color bgWhite = Color(0xFFFFFFFF);
  static const Color fontColor = Color(0xFF222222);
  static const Color paperColor = Color(0xFFCCCCCC);
  static const Color paperDarkColor = Color(0x47393939);
  static const Color tapeGrayColor = Color(0xFFDBD8BE);
  static const Color tapeEdgeGrayColor = Color(0xFFB7B49D);
  static const Color border = Color(0xFF4D4D57);
  static const Color borderHover = Color(0xFF7F7F8A);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onBackground = Color(0xFF222222);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color disabled = Color(0xFFBDBDBD);
  static const Color hint = Color(0xFF9E9E9E);
  static const Color divider = Color(0xFF4D4D57);
  static const Color textSecondary = Color(0xFF9E9E9E);
  static const Color textHint = Color(0xFF9E9E9E);
  static const Color inputFill = Color(0xFF363940);
  static const Color cardBg = Color(0xFF363940);
  static const Color chipBg = Color(0xFF363940);
  static const Color appBarBg = Color(0xFF363940);
  static const Color appBarFg = Color(0xFF222222);
  static const Color errorBg = Color(0xFFB71C1C);
  static const Color errorBackground = Color(0xFFB71C1C);
  static const Color surfaceAlt = Color(0xFF313337);
  static const Color primaryVariant = Color(0xFF1B8AA8);
  static const Color secondaryVariant = Color(0xFF025A70);
}

/// Light theme colors
class LightColors {
  // Background & surface
  static const Color background = Color(0xFFFFFFFF); // --bg-color
  static const Color surface = Color(0xFF363940); // --ui-bg
  static const Color surfaceAlt = Color(0xFF313337); // --ui-discord-bg

  // Text colors
  static const Color text = Color(0xFF222222); // --font-color
  static const Color textSecondary = Color(0xFF9E9E9E);
  static const Color textHint = Color(0xFF9E9E9E);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onSurface = Color(0xFF222222);

  // Border & divider
  static const Color border = Color(0xFF4D4D57); // hsl(223,10%,30%)
  static const Color borderHover = Color(0xFF7F7F8A); // hsl(223,10%,50%)
  static const Color divider = Color(0xFF4D4D57);

  // UI elements
  static const Color appBarBg = Color(0xFF363940); // --ui-bg
  static const Color appBarFg = Color(0xFF222222);
  static const Color inputFill = Color(0xFF363940); // --ui-bg
  static const Color cardBg = Color(0xFF363940); // --ui-bg
  static const Color chipBg = Color(0xFF363940); // --ui-bg

  // Error states
  static const Color errorBg = Color(0xFFB71C1C);

  // Legacy compatibility
  static const Color primaryVariant = Color(0xFF1B8AA8);
  static const Color secondaryVariant = Color(0xFF025A70);
  static const Color bg = background;
  static const Color fg = text;
  static const Color onBackground = text;
  static const Color onSecondary = Color(0xFF000000);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color disabled = Color(0xFFBDBDBD);
  static const Color hint = textHint;
}

/// Dark theme colors
class DarkColors {
  // Background & surface
  static const Color background = Color(0xFF1A1A1F); // hsl(223,10%,10%)
  static const Color surface = Color(0xFF363940); // --ui-bg
  static const Color surfaceAlt = Color(0xFF313337); // --ui-discord-bg

  // Text colors
  static const Color text = Color(0xFFE5E5E8); // hsl(223,10%,90%)
  static const Color textSecondary = Color(0xFF9E9E9E);
  static const Color textHint = Color(0xFF9E9E9E);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onSurface = Color(0xFFE5E5E8);

  // Border & divider
  static const Color border = Color(0xFF4D4D57); // hsl(223,10%,30%)
  static const Color borderHover = Color(0xFF7F7F8A); // hsl(223,10%,50%)
  static const Color divider = Color(0xFF4D4D57);

  // UI elements
  static const Color appBarBg = Color(0xFF363940); // --ui-bg
  static const Color appBarFg = Color(0xFFE5E5E8);
  static const Color inputFill = Color(0xFF363940); // --ui-bg
  static const Color cardBg = Color(0xFF363940); // --ui-bg
  static const Color chipBg = Color(0xFF363940); // --ui-bg

  // Error states
  static const Color errorBg = Color(0xFFB71C1C);

  // Legacy compatibility
  static const Color primaryVariant = Color(0xFF1B8AA8);
  static const Color secondaryVariant = Color(0xFF025A70);
  static const Color bg = background;
  static const Color fg = text;
  static const Color onBackground = text;
  static const Color onError = Color(0xFFFFFFFF);
  static const Color disabled = Color(0xFFBDBDBD);
  static const Color hint = textHint;
}
