import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.3,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Image.asset(
            "assets/Hello-cuate.png",
            height: 156.0,
          ),
          const Text(
            "Raffa",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt, sapien sit amet pharetra placerat.",
            textAlign: TextAlign.center,
          ),
          const Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(
                label: Text(
                  "Computer Engineer",
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
                  "App Developer",
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

          //

          const Divider(),

          //

          Container(
            child: const Row(
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: FaIcon(
                      FontAwesomeIcons.githubAlt,
                      size: 20.0,
                    ),
                  ),
                ),

                //
                SizedBox(width: 12.0),
                //

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Github"), Text("Raffashe")],
                )
              ],
            ),
          ),
          //
          //
          //
          Container(
            child: const Row(
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: FaIcon(
                      FontAwesomeIcons.githubAlt,
                      size: 20.0,
                    ),
                  ),
                ),

                //
                SizedBox(width: 12.0),
                //

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Github"), Text("Raffashe")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
