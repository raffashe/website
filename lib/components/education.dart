import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  final List<Map<String, String>> educationDetails = [
    {
      'year': '2014 - 2016',
      'title': 'Ensino Técnico',
      'description':
          'Curso técnico concomitante ao ensino médio no Instituto Federal em Desenvolvimento Web',
    },
    {
      'year': '2016 - 2021',
      'title': 'Bacharelado em Engenharia da Computação',
      'description':
          'Concluído o Bacharelado em Engenharia da Computação na UNICEUMA.',
    },
    {
      'year': '2024 - Presente',
      'title': 'Especialização em Neuroengenharia',
      'description':
          'Especialização em Neuroengenharia e Neurorobótica na Unyleya, com foco em soluções tecnológicas acessíveis.',
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
            "Educação",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12.0),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: educationDetails.length,
            itemBuilder: (context, index) {
              final education = educationDetails[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        education['year']!,
                        style: const TextStyle(
                          fontSize: 10.0,
                          color: Colors.indigo,
                        ),
                      ),
                      Text(
                        education['title']!,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        education['description']!,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey.shade700,
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
