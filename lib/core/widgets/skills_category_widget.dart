import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../design_system/components/ds_card.dart';
import '../../design_system/components/ds_chip.dart';
import '../../design_system/components/ds_text.dart';
import '../../design_system/tokens/ds_spacing.dart';

class SkillsCategory extends StatelessWidget {
  final String title;
  final List<String> items;
  const SkillsCategory({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : ((context.screenWidth * 0.7) / 3),
      child: DSCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DSText(title, typography: DSTextStyle.headerMedium),
            const SizedBox(height: DSSpacing.v12),
            Wrap(
              spacing: DSSpacing.v8,
              runSpacing: DSSpacing.v8,
              children: items.map((item) => DSChip(label: item)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
