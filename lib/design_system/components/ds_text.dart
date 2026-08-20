import 'package:flutter/material.dart';

import '../theme/ds_theme.dart';

enum DSTextStyle { hero, headerLarge, headerMedium, headerSmall, labelMedium, labelSmall, bodyMedium, bodySmall, caption }

class DSText extends StatelessWidget {
  const DSText(
    this.data, {
    super.key,
    this.typography = DSTextStyle.bodyMedium,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.semanticsLabel,
    this.selectable = false,
  });

  final String data;
  final DSTextStyle typography;
  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final String? semanticsLabel;
  final bool selectable;

  @override
  Widget build(BuildContext context) {
    final tokens = context.dsTypography;
    final style = switch (typography) {
      DSTextStyle.hero => tokens.hero,
      DSTextStyle.headerLarge => tokens.headerLarge,
      DSTextStyle.headerMedium => tokens.headerMedium,
      DSTextStyle.headerSmall => tokens.headerSmall,
      DSTextStyle.labelMedium => tokens.labelMedium,
      DSTextStyle.labelSmall => tokens.labelSmall,
      DSTextStyle.bodyMedium => tokens.bodyMedium,
      DSTextStyle.bodySmall => tokens.bodySmall,
      DSTextStyle.caption => tokens.caption,
    }.copyWith(color: color ?? context.dsColor.textPrimary);

    Widget child = Text(
      data,
      style: style,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
    if (selectable) child = SelectionArea(child: child);
    if (semanticsLabel != null) child = Semantics(label: semanticsLabel, child: child);
    return child;
  }
}
