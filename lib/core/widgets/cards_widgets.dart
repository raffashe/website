import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../design_system/components/ds_card.dart';
import '../../design_system/components/ds_text.dart';
import '../../design_system/theme/ds_theme.dart';
import '../../design_system/tokens/ds_spacing.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String url;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.url,
  });

  Future<void> _launchUrl() async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: DSSpacing.v8),
      child: DSCard(
        elevation: DSCardElevation.small,
        onTap: _launchUrl,
        semanticLabel: title,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(image, width: 50.0, height: 50.0),
            const SizedBox(width: DSSpacing.v20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DSText(title, typography: DSTextStyle.headerSmall),
                  const SizedBox(height: DSSpacing.v4),
                  DSText(
                    description,
                    typography: DSTextStyle.bodySmall,
                    color: context.dsColor.textSecondary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
