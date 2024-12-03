import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../constants/decoration_style.dart';
import '../../constants/style_text.dart';
import '../../widgets/cards_widgets.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final List<Map<String, String>> projectDetails = [
    {
      'title': 'Chat',
      'description':
          'É uma aplicação de chat em tempo real integrado ao Firebase',
      'image': 'assets/chat.svg',
      'url': 'https://github.com/raffashe/chat_online',
    },
    {
      'title': 'DetectorPy',
      'description':
          'É um projeto de detecção de objetos em tempo real usando o modelo YOLOv8',
      'image': 'assets/DetectorPy.svg',
      'url': 'https://github.com/raffashe/DetectorPy',
    },
    {
      'title': 'Popcorn',
      'description':
          'Popcorn é um aplicativo de filmes que permite favoritar, dar feedback, armazenar preferências localmente e exibir resultados em cards.',
      'image': 'assets/PopCorn.svg',
      'url': 'https://github.com/raffashe/popcorn',
    },
    {
      'title': 'FaceRecPy',
      'description':
          'FaceRecPy é um projeto simples de detecção facial usando Python, OpenCV, Mediapipe e a biblioteca CVZone',
      'image': 'assets/FaceRecPy.svg',
      'url': 'https://github.com/raffashe/FaceRecPy',
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
      decoration: DecorationStyle.containerDecoration(0.8),
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Projetos",
            style: TextStylesConst.titleStyle,
          ),
          const SizedBox(height: 12.0),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projectDetails.length,
            itemBuilder: (context, index) {
              final project = projectDetails[index];
              return ProjectCard(
                title: project['title']!,
                description: project['description']!,
                image: project['image']!,
                url: project['url']!,
              );
            },
          ),
        ],
      ),
    );
  }
}
