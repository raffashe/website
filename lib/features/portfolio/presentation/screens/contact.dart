import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/animated_contact.dart';
import '../../../../core/constants/decoration_style.dart';
import '../../../../core/constants/style_text.dart';
import '../../../../core/utils/portfolio_layout.dart';
import '../../../../l10n/app_localizations.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    final l10n = AppLocalizations.of(context);
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        throw l10n.errorCouldNotOpenLink(url);
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
    final l10n = AppLocalizations.of(context);

    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: portfolioWideWidth(context),
      decoration: DecorationStyle.containerDecoration(0.8),
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.contactTitle,
            style: TextStylesConst.titleStyle,
          ),
          const SizedBox(height: 12.0),
          AnimatedContact(
            iconData: FontAwesomeIcons.github,
            title: l10n.contactGithub,
            subtitle: l10n.contactGithubHandle,
            onTap: () => _launchURL('https://github.com/raffashe'),
          ),
          AnimatedContact(
            iconData: FontAwesomeIcons.linkedin,
            title: l10n.contactLinkedin,
            subtitle: l10n.contactLinkedinHandle,
            onTap: () => _launchURL('https://www.linkedin.com/in/raffashe/'),
          ),
        ],
      ),
    );
  }
}
