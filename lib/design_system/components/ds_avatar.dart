import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../theme/ds_theme.dart';

class DSAvatar extends StatelessWidget {
  const DSAvatar({
    super.key,
    this.image,
    this.size = 48,
    this.semanticLabel,
    this.fallback,
  });

  DSAvatar.asset(
    String assetPath, {
    super.key,
    this.size = 48,
    this.semanticLabel,
    this.fallback,
  }) : image = AssetImage(assetPath);

  DSAvatar.network(
    String imageUrl, {
    super.key,
    this.size = 48,
    this.semanticLabel,
    this.fallback,
  }) : image = NetworkImage(imageUrl);

  final ImageProvider<Object>? image;
  final double size;
  final String? semanticLabel;
  final Widget? fallback;

  @override
  Widget build(BuildContext context) {
    final color = context.dsColor;
    final child = image == null
        ? fallback ?? Icon(LucideIcons.user, color: color.iconSecondary)
        : null;
    return Semantics(
      image: true,
      label: semanticLabel,
      child: CircleAvatar(
        radius: size / 2,
        backgroundColor: color.fillTertiary,
        backgroundImage: image,
        child: child,
      ),
    );
  }
}
