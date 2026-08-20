import 'package:flutter/material.dart';

import '../../../../core/constants/skills_constants.dart';
import '../../../../core/widgets/skills_category_widget.dart';
import '../../../../design_system/components/ds_text.dart';
import '../../../../design_system/tokens/ds_spacing.dart';
import '../../../../l10n/app_localizations.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Wrap(
      spacing: DSSpacing.v20,
      runSpacing: DSSpacing.v20,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: DSSpacing.v20),
          alignment: Alignment.center,
          child: DSText(
            l10n.skillsTitle,
            typography: DSTextStyle.headerLarge,
          ),
        ),
        SkillsCategory(
          title: l10n.skillsCategoryCoreMobile,
          items: coreMobileSkills,
        ),
        SkillsCategory(
          title: l10n.skillsCategoryArchitecture,
          items: architectureSkills,
        ),
        SkillsCategory(
          title: l10n.skillsCategoryBackendCloud,
          items: backendCloudSkills,
        ),
        SkillsCategory(
          title: l10n.skillsCategoryObservability,
          items: observabilitySkills,
        ),
        SkillsCategory(
          title: l10n.skillsCategoryAiComputerVision,
          items: aiComputerVisionSkills,
        ),
        SkillsCategory(
          title: l10n.skillsCategoryDevOps,
          items: devOpsSkills,
        ),
      ],
    );
  }
}
