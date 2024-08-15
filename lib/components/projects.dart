import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final List<Map<String, String>> projectDetails = [
    {
      'title': 'bora',
      'description': 'Aplicativo de gestão de rotas e gastos em um rolê',
      'image': 'assets/logo-bora.svg',
    },
    {
      'title': 'nhame',
      'description': 'Aplicativo de receitas',
      'image': 'assets/logo-nhame.svg',
    },
    {
      'title': 'contai',
      'description': 'Aplicativo de gestão de gastos no mês',
      'image': 'assets/logo-contai.svg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final containerWidth = context.screenWidth < 900
        ? context.screenWidth * 0.9
        : context.screenWidth < 1600
            ? context.screenWidth * 0.5
            : context.screenWidth * 0.4;

    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: containerWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Projetos",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12.0),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projectDetails.length,
            itemBuilder: (context, index) {
              final project = projectDetails[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        project['image']!,
                        width: 50.0,
                        height: 50.0,
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              project['title']!,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              project['description']!,
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
