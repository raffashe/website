import 'package:flutter/material.dart';

import '../tokens/ds_colors.dart';
import '../tokens/ds_elevation.dart';
import '../tokens/ds_radius.dart';
import '../tokens/ds_spacing.dart';
import '../tokens/ds_typography.dart';

/// Builds the Material 3 themes and exposes Design System tokens from context.
class DSTheme {
  const DSTheme._();

  static ThemeData light() => _build(Brightness.light, DSColor.light, DSElevation.light);

  static ThemeData dark() => _build(Brightness.dark, DSColor.dark, DSElevation.dark);

  static ThemeData _build(Brightness brightness, DSColor colors, DSElevation elevation) {
    final typography = DSTypography.standard();
    final colorScheme = ColorScheme(
      brightness: brightness,
      primary: colors.fillInverse,
      onPrimary: colors.textOnInverse,
      secondary: colors.fillTertiary,
      onSecondary: colors.textPrimary,
      error: colors.textPrimary,
      onError: colors.textInverse,
      surface: colors.fillPrimary,
      onSurface: colors.textPrimary,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      fontFamily: DSTypography.fontFamily,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colors.fillPrimary,
      textTheme: TextTheme(
        displayLarge: typography.hero,
        headlineLarge: typography.headerLarge,
        headlineMedium: typography.headerMedium,
        headlineSmall: typography.headerSmall,
        titleMedium: typography.labelMedium,
        titleSmall: typography.labelSmall,
        bodyLarge: typography.bodyMedium,
        bodyMedium: typography.bodySmall,
        bodySmall: typography.caption,
      ),
      extensions: <ThemeExtension<dynamic>>[
        colors,
        const DSSpacing(),
        const DSRadius(),
        elevation,
        typography,
      ],
    );
  }
}

extension DSThemeContext on BuildContext {
  DSColor get dsColor => Theme.of(this).extension<DSColor>()!;
  DSSpacing get dsSpacing => Theme.of(this).extension<DSSpacing>()!;
  DSRadius get dsRadius => Theme.of(this).extension<DSRadius>()!;
  DSElevation get dsElevation => Theme.of(this).extension<DSElevation>()!;
  DSTypography get dsTypography => Theme.of(this).extension<DSTypography>()!;
}
