import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

double portfolioNarrowWidth(BuildContext context) {
  final width = context.screenWidth;
  if (width < 900) {
    return width * 0.9;
  }
  if (width < 1600) {
    return width * 0.4;
  }
  return width * 0.2;
}

double portfolioWideWidth(BuildContext context) {
  final width = context.screenWidth;
  if (width < 900) {
    return width * 0.9;
  }
  if (width < 1600) {
    return width * 0.5;
  }
  return width * 0.4;
}
