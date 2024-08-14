import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        _buildSkillsCategory(
          context,
          title: "Linguagem de programação",
          items: [
            "Dart",
            "Kotlin",
            "Java",
            "Python",
            "C++",
          ],
          color: Colors.indigo,
        ),
        _buildSkillsCategory(
          context,
          title: "Frameworks",
          items: [
            "Flutter",
            "React Native",
            "Django",
          ],
          color: Colors.cyan,
        ),
        _buildSkillsCategory(
          context,
          title: "Outras ferramentas",
          items: [
            "Clean Architecture",
            "BLoC",
            "Riverpod",
            "GetIt",
            "Firebase",
            "SQLite",
            "MySQL",
            "PostgreSQL",
            "SQL Server",
            "RESTful APIs",
            "Git",
            "GitHub",
            "GitLab",
            "Azure DevOps",
            "Jenkins",
            "Scrum",
            "Kanban",
            "TestFlight",
            "Mockito",
            "CI/CD",
            "OpenCV",
          ],
          color: Colors.cyan,
        ),
      ],
    );
  }

  Widget _buildSkillsCategory(
    BuildContext context, {
    required String title,
    required List<String> items,
    required Color color,
  }) {
    return Container(
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : ((context.screenWidth * 0.7) / 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
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
