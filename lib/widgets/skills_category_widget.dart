import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:raffashe/constants/style_text.dart';
import '../constants/decoration_style.dart';

class SkillsCategory extends StatelessWidget {
  final String title;
  final List<String> items;
  final Color color;

  const SkillsCategory({
    super.key,
    required this.title,
    required this.items,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : ((context.screenWidth * 0.7) / 3),
      decoration: DecorationStyle.containerDecoration(0.8),
      padding: const EdgeInsets.all(28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStylesConst.titleStyle,
          ),
          const Divider(),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: items
                .map((item) => Chip(
                      label: Text(item),
                      labelStyle: TextStyle(color: color),
                      side: BorderSide(color: color),
                      backgroundColor: Colors.white,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
