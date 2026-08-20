import 'package:flutter/material.dart';
import 'package:raffashe/core/locale/locale_controller.dart';
import 'package:raffashe/design_system/components/ds_button.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key, required this.controller});

  final LocaleController controller;

  @override
  Widget build(BuildContext context) {
    final isEnglish = controller.locale.languageCode == 'en';
    return DSButton(
      label: isEnglish ? 'PT' : 'EN',
      onPressed: isEnglish ? controller.setPortuguese : controller.setEnglish,
      variant: DSButtonVariant.paddingless,
      size: DSButtonSize.small,
      tooltip: 'Change language',
    );
  }
}
