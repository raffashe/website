import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/animated_contact.dart';
import '../utils/social_row.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        throw 'Não foi possível abrir o link: $url';
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.4
              : context.screenWidth * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(30.0),
      height: 800.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/raffashe.png",
                height: 156.0,
              ),
              const Text(
                "Raffashe",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Sou Engenheira de Computação e atualmente estou cursando uma pós-graduação em Neuroengenharia. Tenho experiência com Java e Kotlin, e atualmente estou trabalhando com Dart e Flutter para desenvolvimento multiplataforma. Também tenho conhecimento em Python com foco na criação de redes neurais",
                  textAlign: TextAlign.center,
                ),
              ),
              const Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text(
                      "Engenheira da Computação",
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      side: BorderSide(color: Colors.green),
                    ),
                  ),
                  Chip(
                    label: Text(
                      "Mobile Developer",
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      side: BorderSide(color: Colors.green),
                    ),
                  ),
                ],
              ),
              const Divider(),
              AnimatedContact(
                iconData: FontAwesomeIcons.github,
                title: "Github",
                subtitle: "raffashe",
                onTap: () => _launchURL('https://github.com/raffashe'),
              ),
              AnimatedContact(
                iconData: FontAwesomeIcons.linkedin,
                title: "Linkedin",
                subtitle: "raffaela-castro-silva",
                onTap: () => _launchURL(
                    'https://www.linkedin.com/in/raffaela-castro-silva/'),
              ),
            ],
          ),
          const Column(
            children: [
              Divider(),
              SocialRow(),
            ],
          ),
        ],
      ),
    );
  }
}
