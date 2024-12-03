import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raffashe/constants/style_text.dart';
import '../../constants/decoration_style.dart';

class AnimatedContact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const AnimatedContact({
    super.key,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (val) {
        setState(() {
          isHovering = val;
        });
      },
      child: AnimatedContainer(
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
                  widget.iconData,
                  size: 20.0,
                ),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStylesConst.itemTitleStyle,
                ),
                Text(
                  widget.subtitle,
                  style: TextStylesConst.subtitleTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
