import 'package:flutter/material.dart';

/// Semantic color tokens. Values intentionally contain no accent color.
class DSColor extends ThemeExtension<DSColor> {
  const DSColor({
    required this.fillPrimary,
    required this.fillSecondary,
    required this.fillTertiary,
    required this.fillInverse,
    required this.fillOverlay,
    required this.textPrimary,
    required this.textSecondary,
    required this.textDisabled,
    required this.textInverse,
    required this.textOnInverse,
    required this.borderSubtle,
    required this.borderLight,
    required this.borderMedium,
    required this.borderStrong,
    required this.borderFocus,
    required this.iconPrimary,
    required this.iconSecondary,
    required this.iconDisabled,
    required this.iconOnInverse,
  });

  final Color fillPrimary;
  final Color fillSecondary;
  final Color fillTertiary;
  final Color fillInverse;
  final Color fillOverlay;
  final Color textPrimary;
  final Color textSecondary;
  final Color textDisabled;
  final Color textInverse;
  final Color textOnInverse;
  final Color borderSubtle;
  final Color borderLight;
  final Color borderMedium;
  final Color borderStrong;
  final Color borderFocus;
  final Color iconPrimary;
  final Color iconSecondary;
  final Color iconDisabled;
  final Color iconOnInverse;

  static const light = DSColor(
    fillPrimary: Color(0xFFFAFAFA), fillSecondary: Color(0xFFF0F0F0),
    fillTertiary: Color(0xFFE8E8E8), fillInverse: Color(0xFF1A1A1A),
    fillOverlay: Color(0x661A1A1A), textPrimary: Color(0xFF1A1A1A),
    textSecondary: Color(0xFF757575), textDisabled: Color(0xFFBDBDBD),
    textInverse: Color(0xFFFFFFFF), textOnInverse: Color(0xFFFFFFFF),
    borderSubtle: Color(0xFFF0F0F0), borderLight: Color(0xFFE0E0E0),
    borderMedium: Color(0xFFBDBDBD), borderStrong: Color(0xFF757575),
    borderFocus: Color(0xFF1A1A1A), iconPrimary: Color(0xFF1A1A1A),
    iconSecondary: Color(0xFF757575), iconDisabled: Color(0xFFBDBDBD),
    iconOnInverse: Color(0xFFFFFFFF),
  );

  static const dark = DSColor(
    fillPrimary: Color(0xFF121212), fillSecondary: Color(0xFF1E1E1E),
    fillTertiary: Color(0xFF2A2A2A), fillInverse: Color(0xFFFAFAFA),
    fillOverlay: Color(0x99000000), textPrimary: Color(0xFFF5F5F5),
    textSecondary: Color(0xFF9E9E9E), textDisabled: Color(0xFF616161),
    textInverse: Color(0xFF1A1A1A), textOnInverse: Color(0xFF1A1A1A),
    borderSubtle: Color(0xFF1E1E1E), borderLight: Color(0xFF2A2A2A),
    borderMedium: Color(0xFF424242), borderStrong: Color(0xFF9E9E9E),
    borderFocus: Color(0xFFF5F5F5), iconPrimary: Color(0xFFF5F5F5),
    iconSecondary: Color(0xFF9E9E9E), iconDisabled: Color(0xFF616161),
    iconOnInverse: Color(0xFF1A1A1A),
  );

  @override
  DSColor copyWith({Color? fillPrimary, Color? fillSecondary, Color? fillTertiary,
    Color? fillInverse, Color? fillOverlay, Color? textPrimary, Color? textSecondary,
    Color? textDisabled, Color? textInverse, Color? textOnInverse, Color? borderSubtle,
    Color? borderLight, Color? borderMedium, Color? borderStrong, Color? borderFocus,
    Color? iconPrimary, Color? iconSecondary, Color? iconDisabled, Color? iconOnInverse}) => DSColor(
      fillPrimary: fillPrimary ?? this.fillPrimary, fillSecondary: fillSecondary ?? this.fillSecondary,
      fillTertiary: fillTertiary ?? this.fillTertiary, fillInverse: fillInverse ?? this.fillInverse,
      fillOverlay: fillOverlay ?? this.fillOverlay, textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary, textDisabled: textDisabled ?? this.textDisabled,
      textInverse: textInverse ?? this.textInverse, textOnInverse: textOnInverse ?? this.textOnInverse,
      borderSubtle: borderSubtle ?? this.borderSubtle, borderLight: borderLight ?? this.borderLight,
      borderMedium: borderMedium ?? this.borderMedium, borderStrong: borderStrong ?? this.borderStrong,
      borderFocus: borderFocus ?? this.borderFocus, iconPrimary: iconPrimary ?? this.iconPrimary,
      iconSecondary: iconSecondary ?? this.iconSecondary, iconDisabled: iconDisabled ?? this.iconDisabled,
      iconOnInverse: iconOnInverse ?? this.iconOnInverse);

  @override
  DSColor lerp(covariant ThemeExtension<DSColor>? other, double t) {
    if (other is! DSColor) return this;
    Color l(Color a, Color b) => Color.lerp(a, b, t)!;
    return DSColor(
      fillPrimary: l(fillPrimary, other.fillPrimary), fillSecondary: l(fillSecondary, other.fillSecondary), fillTertiary: l(fillTertiary, other.fillTertiary), fillInverse: l(fillInverse, other.fillInverse), fillOverlay: l(fillOverlay, other.fillOverlay), textPrimary: l(textPrimary, other.textPrimary), textSecondary: l(textSecondary, other.textSecondary), textDisabled: l(textDisabled, other.textDisabled), textInverse: l(textInverse, other.textInverse), textOnInverse: l(textOnInverse, other.textOnInverse), borderSubtle: l(borderSubtle, other.borderSubtle), borderLight: l(borderLight, other.borderLight), borderMedium: l(borderMedium, other.borderMedium), borderStrong: l(borderStrong, other.borderStrong), borderFocus: l(borderFocus, other.borderFocus), iconPrimary: l(iconPrimary, other.iconPrimary), iconSecondary: l(iconSecondary, other.iconSecondary), iconDisabled: l(iconDisabled, other.iconDisabled), iconOnInverse: l(iconOnInverse, other.iconOnInverse));
  }
}
