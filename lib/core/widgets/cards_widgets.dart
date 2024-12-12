import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/style_text.dart';
import '../constants/colors.dart';
import '../constants/decoration_style.dart';

class ProjectCard extends StatefulWidget {
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

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovering = false;

  // Método para abrir o link
  Future<void> _launchUrl() async {
    final Uri uri = Uri.parse(widget.url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch ${widget.url}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchUrl,
      onHover: (val) {
        setState(() {
          isHovering = val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: DecorationStyle.contactCardDecoration(isHovering),
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                widget.image,
                width: 50.0,
                height: 50.0,
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStylesConst.itemTitleStyle.copyWith(
                        color: AppColors.primary100, // Cor do título
                      ),
                    ),
                    Text(
                      widget.description,
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
