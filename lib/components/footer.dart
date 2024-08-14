import 'package:flutter/material.dart';

import '../utils/social_row.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(top: 20.0),
      child: const Column(
        children: [
          SocialRow(),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Raffashe",
          ),
        ],
      ),
    );
  }
}
