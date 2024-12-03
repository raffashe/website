import 'package:flutter/material.dart';
import 'package:raffashe/core/constants/colors.dart';

class DecorationStyle {
  static BoxDecoration containerDecoration(double opacity) {
    return BoxDecoration(
      color: AppColors.bg100.withOpacity(opacity),
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
          blurRadius: 10.0,
          spreadRadius: 1.0,
        ),
      ],
    );
  }

  static BoxDecoration contactCardDecoration(bool isHovering) {
    return BoxDecoration(
      color: isHovering ? AppColors.bg200 : AppColors.bg300,
      borderRadius: BorderRadius.circular(12.0),
    );
  }

  static BoxDecoration iconButtonDecoration(bool isHovering) {
    return BoxDecoration(
      color: isHovering ? Colors.grey.shade300 : Colors.white,
      borderRadius: BorderRadius.circular(12.0),
      border: Border.all(
        color: isHovering ? Colors.grey : Colors.white,
      ),
    );
  }
}
