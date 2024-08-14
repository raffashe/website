import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/animated_contact.dart';
import '../utils/social_row.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.3
              : context.screenWidth * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      padding: const EdgeInsets.all(30.0),
      height: 800.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/Hello-cuate.png",
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
                  "I am a developer and I am seeking opportunities both within and outside Brazil",
                  textAlign: TextAlign.center,
                ),
              ),
              const Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  const Chip(
                    label: Text(
                      "Computer Engineer",
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      side: BorderSide(
                          color:
                              Colors.green), // Borda com a mesma cor do fundo
                    ),
                  ),
                  const Chip(
                    label: Text(
                      "App Developer",
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      side: BorderSide(
                          color:
                              Colors.green), // Borda com a mesma cor do fundo
                    ),
                  ),
                ],
              ),
              //
              const Divider(),
              //

              AnimatedContact(
                iconData: FontAwesomeIcons.github,
                title: "Github",
                subtitle: "raffashe",
                onTap: () {},
              ),
              AnimatedContact(
                iconData: FontAwesomeIcons.instagram,
                title: "Instagram",
                subtitle: "@raffashe.jpg",
                onTap: () {},
              ),
              AnimatedContact(
                iconData: FontAwesomeIcons.linkedin,
                title: "Linkedin",
                subtitle: "raffaela-castro-silva",
                onTap: () {},
              ),
            ],
          ),

          //
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
