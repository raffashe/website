import 'package:flutter/material.dart';

import '../theme/ds_theme.dart';
import '../tokens/ds_radius.dart';

enum DSIconButtonVariant { fill, outline, ghost }
enum DSIconButtonSize { large, medium, small }

class DSIconButton extends StatelessWidget {
  const DSIconButton({
    super.key,
    required this.icon,
    required this.tooltip,
    required this.onPressed,
    this.variant = DSIconButtonVariant.ghost,
    this.size = DSIconButtonSize.medium,
    this.semanticsLabel,
    this.focusNode,
    this.autofocus = false,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback? onPressed;
  final DSIconButtonVariant variant;
  final DSIconButtonSize size;
  final String? semanticsLabel;
  final FocusNode? focusNode;
  final bool autofocus;

  double get _dimension => switch (size) { DSIconButtonSize.large => 56, DSIconButtonSize.medium => 48, DSIconButtonSize.small => 36 };

  @override
  Widget build(BuildContext context) {
    final color = context.dsColor;
    final filled = variant == DSIconButtonVariant.fill;
    return Semantics(
      button: true,
      label: semanticsLabel ?? tooltip,
      child: IconButton(
        icon: Icon(icon),
        tooltip: tooltip,
        onPressed: onPressed,
        focusNode: focusNode,
        autofocus: autofocus,
        style: ButtonStyle(
          minimumSize: WidgetStatePropertyAll(Size.square(_dimension)),
          maximumSize: WidgetStatePropertyAll(Size.square(_dimension)),
          foregroundColor: WidgetStatePropertyAll(filled ? color.iconOnInverse : color.iconPrimary),
          backgroundColor: WidgetStatePropertyAll(filled ? color.fillInverse : Colors.transparent),
          side: variant == DSIconButtonVariant.outline ? WidgetStatePropertyAll(BorderSide(color: color.borderMedium)) : null,
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(DSRadius.sm)),
          ),
          overlayColor: WidgetStatePropertyAll(color.fillOverlay),
        ),
      ),
    );
  }
}
