import 'package:flutter/material.dart';

import '../theme/ds_theme.dart';
import '../tokens/ds_radius.dart';
import 'ds_text.dart';

class DSChip extends StatelessWidget {
  const DSChip({super.key, required this.label, this.semanticLabel});

  final String label;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final color = context.dsColor;
    return Semantics(
      label: semanticLabel ?? label,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: color.fillSecondary,
          borderRadius: BorderRadius.circular(DSRadius.pill),
          border: Border.all(color: color.borderLight),
        ),
        child: DSText(label, typography: DSTextStyle.labelSmall),
      ),
    );
  }
}
