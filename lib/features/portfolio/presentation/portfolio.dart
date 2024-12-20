import 'package:flutter/material.dart';
import 'package:raffashe/features/portfolio/presentation/screens/projects.dart';

import 'screens/about.dart';
import 'screens/education.dart';
import '../../../core/widgets/footer.dart';
import 'screens/skills_screen.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  bool isMobile = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20.0,
                runAlignment: WrapAlignment.center,
                children: [
                  Column(
                    children: [
                      About(),
                      SizedBox(height: 20), // Espaçamento entre as seções
                    ],
                  ),
                  Column(
                    children: [
                      Education(),
                      SizedBox(height: 20), // Espaçamento entre as seções
                      Projects(), // Projects agora fica abaixo de Education
                    ],
                  ),
                ],
              ),
              Skills(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
