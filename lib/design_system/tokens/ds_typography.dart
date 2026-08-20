import 'package:flutter/material.dart';

/// Typography tokens for the Portfolio Design System.
class DSTypography extends ThemeExtension<DSTypography> {
  const DSTypography({
    required this.hero,
    required this.headerLarge,
    required this.headerMedium,
    required this.headerSmall,
    required this.labelMedium,
    required this.labelSmall,
    required this.bodyMedium,
    required this.bodySmall,
    required this.caption,
  });

  static const fontFamily = 'PlusJakartaSans';

  final TextStyle hero;
  final TextStyle headerLarge;
  final TextStyle headerMedium;
  final TextStyle headerSmall;
  final TextStyle labelMedium;
  final TextStyle labelSmall;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle caption;

  factory DSTypography.standard() {
    TextStyle style(double size, FontWeight weight, double height,
        {double? letterSpacing}) {
      return TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        fontWeight: weight,
        height: height / size,
        letterSpacing: letterSpacing,
      );
    }

    return DSTypography(
      hero: style(48, FontWeight.w700, 56, letterSpacing: -1),
      headerLarge: style(32, FontWeight.w700, 40, letterSpacing: -0.5),
      headerMedium: style(20, FontWeight.w600, 28),
      headerSmall: style(16, FontWeight.w600, 22),
      labelMedium: style(14, FontWeight.w600, 20),
      labelSmall: style(12, FontWeight.w600, 16),
      bodyMedium: style(16, FontWeight.w400, 24),
      bodySmall: style(14, FontWeight.w400, 20),
      caption: style(12, FontWeight.w400, 16),
    );
  }

  @override
  DSTypography copyWith({
    TextStyle? hero,
    TextStyle? headerLarge,
    TextStyle? headerMedium,
    TextStyle? headerSmall,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? caption,
  }) {
    return DSTypography(
      hero: hero ?? this.hero,
      headerLarge: headerLarge ?? this.headerLarge,
      headerMedium: headerMedium ?? this.headerMedium,
      headerSmall: headerSmall ?? this.headerSmall,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      caption: caption ?? this.caption,
    );
  }

  @override
  DSTypography lerp(covariant ThemeExtension<DSTypography>? other, double t) {
    if (other is! DSTypography) return this;
    return DSTypography(
      hero: TextStyle.lerp(hero, other.hero, t)!,
      headerLarge: TextStyle.lerp(headerLarge, other.headerLarge, t)!,
      headerMedium: TextStyle.lerp(headerMedium, other.headerMedium, t)!,
      headerSmall: TextStyle.lerp(headerSmall, other.headerSmall, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
    );
  }
}
