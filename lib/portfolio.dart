import 'package:flutter/material.dart';
import 'package:raffashe/components/about.dart';
import 'package:raffashe/components/education.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Portfolio> {
  List<Widget> navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: const Text("Education")),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: const Text("Skills")),
    ),
  ];

  bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Raffaela de Castro"),
          actions: isMobile ? null : navItems,
        ),
        drawer: isMobile
            ? Drawer(
                child: ListView(
                  children: navItems,
                ),
              )
            : null,
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [About(), Education()],
              )
            ],
          ),
        ));
  }
}
