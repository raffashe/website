import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/style_text.dart';
import '../constants/colors.dart';

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

  // Método para abrir o link
  Future<void> _launchUrl() async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchUrl,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: AppColors.bg300,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                image,
                width: 50.0,
                height: 50.0,
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStylesConst.itemTitleStyle.copyWith(
                        color: AppColors.primary100, // Cor do título
                      ),
                    ),
                    Text(
                      description,
                      style: TextStylesConst.descriptionStyle.copyWith(
                        color: AppColors.primary100, // Cor da descrição
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
