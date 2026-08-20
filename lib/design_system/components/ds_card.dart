import 'package:flutter/material.dart';

import '../theme/ds_theme.dart';
import '../tokens/ds_radius.dart';

enum DSCardSurface { primary, secondary }
enum DSCardElevation { none, small }

class DSCard extends StatelessWidget {
  const DSCard({
    super.key,
    required this.child,
    this.surface = DSCardSurface.secondary,
    this.elevation = DSCardElevation.none,
    this.padding = const EdgeInsets.all(16),
    this.onTap,
    this.semanticLabel,
    this.focusNode,
  });

  final Widget child;
  final DSCardSurface surface;
  final DSCardElevation elevation;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final String? semanticLabel;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    final color = context.dsColor;
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(DSRadius.md),
      side: BorderSide(color: color.borderLight),
    );
    final contents = Padding(padding: padding, child: child);
    return Semantics(
      button: onTap != null,
      label: semanticLabel,
      child: Material(
        color: surface == DSCardSurface.primary ? color.fillPrimary : color.fillSecondary,
        shape: shape,
        shadowColor: Colors.transparent,
        child: DecoratedBox(
          decoration: ShapeDecoration(
            shape: shape,
            shadows: elevation == DSCardElevation.small ? context.dsElevation.sm : const [],
          ),
          child: onTap == null
              ? contents
              : InkWell(
                  onTap: onTap,
                  focusNode: focusNode,
                  borderRadius: BorderRadius.circular(DSRadius.md),
                  child: contents,
                ),
        ),
      ),
    );
  }
}
