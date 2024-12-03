import 'package:flutter/material.dart';
import '../../constants/skills_constants.dart';
import '../../constants/style_text.dart';
import '../../widgets/skills_category_widget.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            "Minhas Skills",
            style: TextStylesConst.titleStyle,
          ),
        ),
        const SkillsCategory(
          title: "Linguagem de Programação",
          items: programmingLanguages,
          color: Colors.indigo,
        ),
        const SkillsCategory(
          title: "Frameworks",
          items: frameworks,
          color: Colors.cyan,
        ),
        const SkillsCategory(
          title: "Outras Ferramentas",
          items: otherTools,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );
  }
}
