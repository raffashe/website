import 'package:flutter/material.dart';

import '../../../../core/constants/decoration_style.dart';
import '../../../../core/constants/style_text.dart';
import '../../../../core/utils/portfolio_layout.dart';
import '../../../../l10n/app_localizations.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: portfolioNarrowWidth(context),
      decoration: DecorationStyle.containerDecoration(0.8),
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Image.asset(
            'assets/raffashe.png',
            height: 156.0,
          ),
          Text(
            l10n.heroName,
            style: TextStylesConst.nameStyle,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              l10n.heroTitle,
              style: TextStylesConst.itemTitleStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              l10n.heroSubtitle,
              style: TextStylesConst.descriptionStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(
                label: Text(
                  l10n.heroChipSoftwareEngineer,
                  style: TextStylesConst.chipLabelStyle,
                ),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding: const EdgeInsets.all(8.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
              Chip(
                label: Text(
                  l10n.heroChipMobileEngineering,
                  style: TextStylesConst.chipLabelStyle,
                ),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding: const EdgeInsets.all(8.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
