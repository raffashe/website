import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importe o FontAwesome

import 'components/about.dart';
import 'components/education.dart';
import 'components/footer.dart';
import 'components/skills.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  bool isMobile = false;
  final skillKey = GlobalKey();

  @override
  void initState() {
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(
          onPressed: _downloadPDF,
          label: const Text("Experience"),
          icon: const FaIcon(FontAwesomeIcons.filePdf), // Adicione o ícone aqui
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Scrollable.ensureVisible(skillKey.currentContext!);
          },
          child: const Text("Skills"),
        ),
      ),
    ];
    super.initState();
  }

  Future<void> _downloadPDF() async {
    try {
      final byteData = await rootBundle.load('assets/curriculo.pdf');
      final buffer = byteData.buffer.asUint8List();

      final blob = html.Blob([buffer]);
      final url = html.Url.createObjectUrlFromBlob(blob);

      final anchor = html.AnchorElement(href: url)
        ..setAttribute('download', 'curriculo.pdf')
        ..click();

      html.Url.revokeObjectUrl(url);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Download iniciado: curriculo.pdf')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Falha no download: $e')),
      );
    }
  }

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Wrap(
                alignment: WrapAlignment.center,
                spacing: 20.0,
                runAlignment: WrapAlignment.center,
                children: [
                  About(),
                  Education(),
                ],
              ),
              Skills(
                key: skillKey,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
