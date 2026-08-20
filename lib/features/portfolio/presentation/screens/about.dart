import 'package:flutter/material.dart';

import '../../../../core/utils/portfolio_layout.dart';
import '../../../../design_system/components/ds_card.dart';
import '../../../../design_system/components/ds_text.dart';
import '../../../../design_system/theme/ds_theme.dart';
import '../../../../design_system/tokens/ds_spacing.dart';
import '../../../../l10n/app_localizations.dart';

class _EducationEntry {
  const _EducationEntry({
    required this.period,
    required this.title,
    required this.institution,
  });

  final String period;
  final String title;
  final String institution;
}

class About extends StatelessWidget {
  const About({super.key});

  static const _twoColumnMinWidth = 480.0;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final entries = [
      _EducationEntry(
        period: l10n.educationBachelorPeriod,
        title: l10n.educationBachelorTitle,
        institution: l10n.educationBachelorDescription,
      ),
      _EducationEntry(
        period: l10n.educationPostgradPeriod,
        title: l10n.educationPostgradTitle,
        institution: l10n.educationPostgradDescription,
      ),
      _EducationEntry(
        period: l10n.educationTechnicalPeriod,
        title: l10n.educationTechnicalTitle,
        institution: l10n.educationTechnicalDescription,
      ),
    ];

    return SizedBox(
      width: portfolioWideWidth(context),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final aboutContent = _AboutContent(description: l10n.aboutDescription);
          final educationContent = _EducationContent(
            title: l10n.educationTitle,
            entries: entries,
          );

          if (constraints.maxWidth >= _twoColumnMinWidth) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: aboutContent),
                const SizedBox(width: DSSpacing.v32),
                Expanded(child: educationContent),
              ],
            );
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              aboutContent,
              const SizedBox(height: DSSpacing.v32),
              Divider(color: context.dsColor.borderLight),
              const SizedBox(height: DSSpacing.v32),
              educationContent,
            ],
          );
        },
      ),
    );
  }
}

class _AboutContent extends StatelessWidget {
  const _AboutContent({required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSText(l10n.aboutTitle, typography: DSTextStyle.headerLarge),
        const SizedBox(height: DSSpacing.v12),
        ...description.split('\n\n').expand(
          (paragraph) => [
            DSText(
              paragraph,
              typography: DSTextStyle.bodyMedium,
              color: context.dsColor.textSecondary,
              selectable: true,
            ),
            const SizedBox(height: DSSpacing.v24),
          ],
        ).take(description.split('\n\n').length * 2 - 1),
      ],
    );
  }
}

class _EducationContent extends StatelessWidget {
  const _EducationContent({required this.title, required this.entries});

  final String title;
  final List<_EducationEntry> entries;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSText(title, typography: DSTextStyle.headerMedium),
        const SizedBox(height: DSSpacing.v12),
        ...entries.map(
          (entry) => Padding(
            padding: const EdgeInsets.only(bottom: DSSpacing.v8),
            child: DSCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DSText(
                    entry.period,
                    typography: DSTextStyle.caption,
                    color: context.dsColor.textSecondary,
                  ),
                  const SizedBox(height: DSSpacing.v4),
                  DSText(entry.title, typography: DSTextStyle.headerSmall),
                  const SizedBox(height: DSSpacing.v4),
                  DSText(
                    entry.institution,
                    typography: DSTextStyle.bodySmall,
                    color: context.dsColor.textSecondary,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
