import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raffashe/core/constants/style_text.dart';

import '../../constants/decoration_style.dart';

class AnimatedContactCard extends StatelessWidget {
  final bool isHovering;
  final IconData iconData;
  final String title;
  final String subtitle;

  const AnimatedContactCard({
    super.key,
    required this.isHovering,
    required this.iconData,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: DecorationStyle.contactCardDecoration(isHovering),
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FaIcon(
                iconData,
                size: 20.0,
              ),
            ),
          ),
          const SizedBox(width: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStylesConst.itemTitleStyle,
              ),
              Text(
                subtitle,
                style: TextStylesConst.subtitleTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
