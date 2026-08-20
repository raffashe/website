import 'package:flutter/material.dart';
import 'package:raffashe/l10n/app_localizations.dart';

import '../constants/social_row.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      color: const Color.fromARGB(255, 0, 0, 0),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          const SocialRow(),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            l10n.footerBrand,
          ),
        ],
      ),
    );
  }
}
