import 'package:flutter/material.dart';

class DSRadius extends ThemeExtension<DSRadius> {
  const DSRadius();
  static const none = 0.0, xs = 4.0, sm = 8.0, md = 12.0, lg = 16.0,
      xl = 24.0, pill = 999.0, circle = 999.0;
  @override
  DSRadius copyWith() => this;
  @override
  DSRadius lerp(covariant ThemeExtension<DSRadius>? other, double t) => this;
}
