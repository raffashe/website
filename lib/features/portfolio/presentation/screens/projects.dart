import 'package:flutter/material.dart';

import '../../../../core/models/project_entry.dart';
import '../../../../core/utils/portfolio_layout.dart';
import '../../../../core/widgets/cards_widgets.dart';
import '../../../../design_system/components/ds_text.dart';
import '../../../../design_system/tokens/ds_spacing.dart';
import '../../../../l10n/app_localizations.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  List<ProjectEntry> _projects(AppLocalizations l10n) {
    return [
      ProjectEntry(
        title: 'Chat',
        description: l10n.projectChatDescription,
        image: 'assets/chat.svg',
        url: 'https://github.com/raffashe/chat_online',
      ),
      ProjectEntry(
        title: 'DetectorPy',
        description: l10n.projectDetectorPyDescription,
        image: 'assets/DetectorPy.svg',
        url: 'https://github.com/raffashe/DetectorPy',
      ),
      ProjectEntry(
        title: 'Popcorn',
        description: l10n.projectPopcornDescription,
        image: 'assets/PopCorn.svg',
        url: 'https://github.com/raffashe/popcorn',
      ),
      ProjectEntry(
        title: 'FaceRecPy',
        description: l10n.projectFaceRecPyDescription,
        image: 'assets/FaceRecPy.svg',
        url: 'https://github.com/raffashe/FaceRecPy',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final projects = _projects(l10n);

    return SizedBox(
      width: portfolioWideWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSText(
            l10n.projectsTitle,
            typography: DSTextStyle.headerLarge,
          ),
          const SizedBox(height: DSSpacing.v12),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projects.length,
            itemBuilder: (context, index) {
              final project = projects[index];
              return ProjectCard(
                title: project.title,
                description: project.description,
                image: project.image,
                url: project.url,
              );
            },
          ),
        ],
      ),
    );
  }
}
