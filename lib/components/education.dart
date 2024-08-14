import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
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
      'title': 'Technical Education',
      'description':
          '2 years in a concurrent technical course with high school at the Federal Institute in Web Development',
    },
    {
      'year': '2016 - 2021',
      'title': 'Bachelor\'s Degree in Computer Engineering',
      'description':
          'Completed a Bachelor\'s Degree in Computer Engineering at UNICEUMA.',
    },
    {
      'year': '2023 - Present',
      'title': 'Mobile Systems Analyst',
      'description':
          'Working as a Mobile Systems Analyst at Escola de Gente, developing accessible mobile applications.',
    },
    {
      'year': '2024 - present',
      'title': 'Specialization in Neuroengineering',
      'description':
          'Specialized in Neuroengineering at Unyleya, focusing on accessible technology solutions.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.5
              : context.screenWidth * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      padding: const EdgeInsets.all(30.0),
      height: 800.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Education",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          //
          const SizedBox(
            height: 12.0,
          ),
          //
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
              itemCount: educationDetails.length,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                final education = educationDetails[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          education['year']!,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.indigo,
                          ),
                        ),
                        Text(
                          education['title']!,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          education['description']!,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
