import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'animated_icon_button.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  // Define os links de cada rede social e o email
  final String spotifyUrl =
      "https://open.spotify.com/playlist/60WVdApqSu3D1ewIypYl0A?si=cf42b4f2cb674aea";
  final String instagramUrl = "https://www.instagram.com/raffashe.jpg/";
  final String email =
      "mailto:raffashedev@gmail.com"; // Usando mailto: para e-mail

  // Função para lançar a URL
  Future<void> _launchURL(BuildContext context, String url) async {
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIconButton(
          iconData: FontAwesomeIcons.spotify,
          onTap: () => _launchURL(context, spotifyUrl),
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.instagram,
          onTap: () => _launchURL(context, instagramUrl),
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.envelope,
          onTap: () => _launchURL(context, email),
        ),
      ],
    );
  }
}
