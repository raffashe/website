import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/decoration_style.dart';
import '../../../../core/constants/style_text.dart';
import '../../../../core/models/experience_entry.dart';
import '../../../../core/utils/portfolio_layout.dart';
import '../../../../l10n/app_localizations.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  List<ExperienceEntry> _entries(AppLocalizations l10n) {
    return [
      ExperienceEntry(
        company: 'Serasa Experian',
        role: l10n.experienceSerasaSe2Role,
        period: l10n.experienceSerasaSe2Period,
        summary: l10n.experienceSerasaSe2Summary,
        highlights: l10n.experienceSerasaSe2Highlights,
      ),
      ExperienceEntry(
        company: 'Serasa Experian',
        role: l10n.experienceSerasaSe1Role,
        period: l10n.experienceSerasaSe1Period,
        summary: l10n.experienceSerasaSe1Summary,
        highlights: l10n.experienceSerasaSe1Highlights,
      ),
      ExperienceEntry(
        company: 'Pix Force',
        role: l10n.experiencePixForceRole,
        period: l10n.experiencePixForcePeriod,
        summary: l10n.experiencePixForceSummary,
        highlights: l10n.experiencePixForceHighlights,
      ),
      ExperienceEntry(
        company: 'Escola de Gente',
        role: l10n.experienceEscolaDeGenteRole,
        period: l10n.experienceEscolaDeGentePeriod,
        summary: l10n.experienceEscolaDeGenteSummary,
        highlights: l10n.experienceEscolaDeGenteHighlights,
      ),
      ExperienceEntry(
        company: 'Accon Tech',
        role: l10n.experienceAcconTechRole,
        period: l10n.experienceAcconTechPeriod,
        summary: l10n.experienceAcconTechSummary,
        highlights: l10n.experienceAcconTechHighlights,
      ),
      ExperienceEntry(
        company: 'Infogeneses',
        role: l10n.experienceInfogenesesRole,
        period: l10n.experienceInfogenesesPeriod,
        summary: l10n.experienceInfogenesesSummary,
        highlights: l10n.experienceInfogenesesHighlights,
      ),
      ExperienceEntry(
        company: l10n.experienceInternshipCompany,
        role: l10n.experienceInternshipRole,
        period: l10n.experienceInternshipPeriod,
        summary: l10n.experienceInternshipSummary,
      ),
      ExperienceEntry(
        company: l10n.experienceAcademicFrontendCompany,
        role: l10n.experienceAcademicFrontendRole,
        period: l10n.experienceAcademicFrontendPeriod,
        summary: l10n.experienceAcademicFrontendSummary,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final entries = _entries(l10n);

    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: portfolioWideWidth(context),
      decoration: DecorationStyle.containerDecoration(0.8),
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.experienceTitle,
            style: TextStylesConst.titleStyle,
          ),
          const SizedBox(height: 12.0),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: entries.length,
            itemBuilder: (context, index) {
              final entry = entries[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: AppColors.bg300,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        entry.company,
                        style: TextStylesConst.itemTitleStyle.copyWith(
                          color: AppColors.primary100,
                        ),
                      ),
                      Text(
                        entry.period,
                        style: TextStylesConst.yearStyle.copyWith(
                          color: AppColors.primary100,
                        ),
                      ),
                      Text(
                        entry.role,
                        style: TextStylesConst.titleTextStyle.copyWith(
                          color: AppColors.primary100,
                        ),
                      ),
                      Text(
                        entry.summary,
                        style: TextStylesConst.descriptionStyle.copyWith(
                          color: AppColors.primary100,
                        ),
                      ),
                      if (entry.highlights.isNotEmpty)
                        Text(
                          entry.highlights,
                          style: TextStylesConst.descriptionStyle.copyWith(
                            color: AppColors.primary100,
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
