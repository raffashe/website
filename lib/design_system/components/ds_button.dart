import 'package:flutter/material.dart';

import '../theme/ds_theme.dart';
import '../tokens/ds_radius.dart';

enum DSButtonVariant { fill, outline, ghost, paddingless }
enum DSButtonSize { large, medium, small }

class DSButton extends StatelessWidget {
  const DSButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = DSButtonVariant.fill,
    this.size = DSButtonSize.medium,
    this.leading,
    this.trailing,
    this.tooltip,
    this.semanticsLabel,
    this.focusNode,
    this.autofocus = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final DSButtonVariant variant;
  final DSButtonSize size;
  final Widget? leading;
  final Widget? trailing;
  final String? tooltip;
  final String? semanticsLabel;
  final FocusNode? focusNode;
  final bool autofocus;

  double get _height => switch (size) { DSButtonSize.large => 56, DSButtonSize.medium => 48, DSButtonSize.small => 36 };

  @override
  Widget build(BuildContext context) {
    final color = context.dsColor;
    final content = Row(mainAxisSize: MainAxisSize.min, children: [
      if (leading != null) ...[leading!, const SizedBox(width: 8)],
      Text(label),
      if (trailing != null) ...[const SizedBox(width: 8), trailing!],
    ]);
    final style = ButtonStyle(
      minimumSize: WidgetStatePropertyAll(Size(0, _height)),
      padding: WidgetStatePropertyAll(variant == DSButtonVariant.paddingless
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(horizontal: 16)),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSRadius.sm),
        ),
      ),
      side: variant == DSButtonVariant.outline
          ? WidgetStatePropertyAll(BorderSide(color: color.borderMedium))
          : null,
      foregroundColor: WidgetStatePropertyAll(
        variant == DSButtonVariant.fill ? color.textInverse : color.textPrimary,
      ),
      backgroundColor: WidgetStatePropertyAll(
        variant == DSButtonVariant.fill ? color.fillInverse : Colors.transparent,
      ),
      overlayColor: WidgetStatePropertyAll(color.fillOverlay),
    );
    final button = switch (variant) {
      DSButtonVariant.fill => FilledButton(onPressed: onPressed, focusNode: focusNode, autofocus: autofocus, style: style, child: content),
      DSButtonVariant.outline => OutlinedButton(onPressed: onPressed, focusNode: focusNode, autofocus: autofocus, style: style, child: content),
      DSButtonVariant.ghost || DSButtonVariant.paddingless => TextButton(onPressed: onPressed, focusNode: focusNode, autofocus: autofocus, style: style, child: content),
    };
    final semanticButton = Semantics(button: true, label: semanticsLabel ?? label, child: button);
    return tooltip == null ? semanticButton : Tooltip(message: tooltip!, child: semanticButton);
  }
}
