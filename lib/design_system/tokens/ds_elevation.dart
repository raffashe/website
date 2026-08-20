import 'package:flutter/material.dart';

class DSElevation extends ThemeExtension<DSElevation> {
  const DSElevation({required this.xs, required this.sm, required this.md, required this.lg, this.overlay = const []});
  final List<BoxShadow> xs, sm, md, lg, overlay;

  static const light = DSElevation(
    xs: [BoxShadow(color: Color(0x0A1A1A1A), blurRadius: 4, offset: Offset(0, 1))],
    sm: [BoxShadow(color: Color(0x141A1A1A), blurRadius: 8, offset: Offset(0, 2))],
    md: [BoxShadow(color: Color(0x1A1A1A1A), blurRadius: 16, offset: Offset(0, 4)), BoxShadow(color: Color(0x0A1A1A1A), blurRadius: 32, offset: Offset(0, 8))],
    lg: [BoxShadow(color: Color(0x291A1A1A), blurRadius: 24, offset: Offset(0, 8)), BoxShadow(color: Color(0x141A1A1A), blurRadius: 48, offset: Offset(0, 16))],
  );
  static const dark = DSElevation(
    xs: [BoxShadow(color: Color(0x0AFFFFFF), blurRadius: 6)],
    sm: [BoxShadow(color: Color(0x0FFFFFFF), blurRadius: 10)],
    md: [BoxShadow(color: Color(0x14FFFFFF), blurRadius: 18)],
    lg: [BoxShadow(color: Color(0x0AFFFFFF), blurRadius: 8)],
    overlay: [BoxShadow(color: Color(0x1FFFFFFF), blurRadius: 36, offset: Offset(0, -2))],
  );

  @override
  DSElevation copyWith({List<BoxShadow>? xs, List<BoxShadow>? sm, List<BoxShadow>? md, List<BoxShadow>? lg, List<BoxShadow>? overlay}) => DSElevation(xs: xs ?? this.xs, sm: sm ?? this.sm, md: md ?? this.md, lg: lg ?? this.lg, overlay: overlay ?? this.overlay);
  @override
  DSElevation lerp(covariant ThemeExtension<DSElevation>? other, double t) => t < .5 || other is! DSElevation ? this : other;
}
