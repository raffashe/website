import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/animated_contact.dart';
import '../../../../core/constants/style_text.dart';
import '../../../../core/constants/decoration_style.dart';

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
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
      }
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
      decoration: DecorationStyle.containerDecoration(0.8),
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
                "Raffaela Castro",
                style: TextStylesConst.nameStyle,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Engenheira de Computação com pós-graduação em Neurorrobótica, especializada no desenvolvimento de soluções inovadoras na interseção entre neurociência e tecnologia. Focada no desenvolvimento multiplataforma usando Flutter, com conhecimento em Dart e Kotlin, crio aplicativos móveis intuitivos e eficientes. Também exploro visão computacional e busco aplicar inteligência artificial para aprimorar a interação humano-máquina.",
                  style: TextStylesConst.descriptionStyle,
                ),
              ),
              const Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text(
                      "Computer Engineer",
                      style: TextStylesConst.chipLabelStyle,
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                  Chip(
                    label: Text(
                      "Mobile Developer",
                      style: TextStylesConst.chipLabelStyle,
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ],
              ),
              const Divider(),
              AnimatedContact(
                iconData: FontAwesomeIcons.github,
                title: "Github",
                subtitle: "github.com/raffashe",
                onTap: () => _launchURL('https://github.com/raffashe'),
              ),
              AnimatedContact(
                iconData: FontAwesomeIcons.linkedin,
                title: "Linkedin",
                subtitle: "linkedin.com/in/raffashe/",
                onTap: () =>
                    _launchURL('https://www.linkedin.com/in/raffashe/'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
