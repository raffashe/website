import 'package:flutter/material.dart';

import '../theme/ds_theme.dart';
import '../tokens/ds_spacing.dart';
import 'ds_avatar.dart';
import 'ds_card.dart';
import 'ds_text.dart';

class DSHeader extends StatelessWidget {
  const DSHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.avatar,
    required this.controls,
    this.compact = false,
  });

  final String title;
  final String subtitle;
  final ImageProvider<Object> avatar;
  final List<Widget> controls;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final avatarSize = compact ? 42.0 : 48.0;
    return DSCard(
      surface: DSCardSurface.primary,
      elevation: DSCardElevation.small,
      padding: EdgeInsets.symmetric(
        horizontal: compact ? DSSpacing.v8 : DSSpacing.v12,
        vertical: DSSpacing.v8,
      ),
      child: Row(
        children: [
          DSAvatar(image: avatar, size: avatarSize, semanticLabel: title),
          const SizedBox(width: DSSpacing.v12),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DSText(title, typography: DSTextStyle.headerSmall, maxLines: 1, overflow: TextOverflow.ellipsis),
                DSText(subtitle, typography: DSTextStyle.caption, color: context.dsColor.textSecondary, maxLines: 1, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
          const SizedBox(width: DSSpacing.v8),
          Wrap(spacing: DSSpacing.v2, children: controls),
        ],
      ),
    );
  }
}
