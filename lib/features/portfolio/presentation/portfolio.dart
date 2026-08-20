import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:raffashe/core/locale/locale_controller.dart';
import 'package:raffashe/core/theme/theme_mode_controller.dart';
import 'package:raffashe/core/widgets/language_switcher.dart';
import 'package:raffashe/design_system/components/ds_button.dart';
import 'package:raffashe/design_system/components/ds_card.dart';
import 'package:raffashe/design_system/components/ds_header.dart';
import 'package:raffashe/design_system/components/ds_icon_button.dart';
import 'package:raffashe/design_system/tokens/ds_radius.dart';
import 'package:url_launcher/url_launcher.dart';

import 'screens/about.dart';
import 'screens/projects.dart';
import 'screens/skills_screen.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key, required this.localeController, required this.themeModeController});

  final LocaleController localeController;
  final ThemeModeController themeModeController;

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  PortfolioSection _active = PortfolioSection.projects;

  void _selectSection(PortfolioSection section) => setState(() => _active = section);

  Future<void> _openGithub() => launchUrl(Uri.parse('https://github.com/raffashe'), mode: LaunchMode.externalApplication);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < 600;
        final inset = compact ? 12.0 : 32.0;
        return Scaffold(
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: constraints.maxHeight),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 108, bottom: 104),
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 180),
                        switchInCurve: Curves.easeOut,
                        switchOutCurve: Curves.easeIn,
                        transitionBuilder: (child, animation) => FadeTransition(opacity: animation, child: child),
                        child: _ActiveSection(section: _active, key: ValueKey(_active)),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: compact ? 12 : 24,
                left: inset,
                right: inset,
                child: DSHeader(
                  title: 'Raffaela Silva',
                  subtitle: 'Mobile Software Engineer',
                  avatar: const AssetImage('assets/raffa.png'),
                  compact: compact,
                  controls: [
                    LanguageSwitcher(controller: widget.localeController),
                    DSIconButton(
                      icon: switch (widget.themeModeController.mode) {
                        ThemeMode.light => LucideIcons.sun,
                        ThemeMode.dark => LucideIcons.moon,
                        ThemeMode.system => LucideIcons.monitor,
                      },
                      tooltip: 'Change theme',
                      size: DSIconButtonSize.small,
                      onPressed: widget.themeModeController.cycle,
                    ),
                    DSIconButton(
                      icon: LucideIcons.github,
                      tooltip: 'Open GitHub',
                      size: DSIconButtonSize.small,
                      onPressed: _openGithub,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: inset,
                right: inset,
                bottom: compact ? 12 : 24,
                child: Center(child: _BottomNavigation(active: _active, onSelected: _selectSection)),
              ),
            ],
          ),
        );
      },
    );
  }
}

enum PortfolioSection { projects, stack, about }

class _ActiveSection extends StatelessWidget {
  const _ActiveSection({super.key, required this.section});

  final PortfolioSection section;

  @override
  Widget build(BuildContext context) {
    final content = switch (section) {
      PortfolioSection.projects => const Projects(),
      PortfolioSection.stack => const Skills(),
      PortfolioSection.about => const About(),
    };
    return Align(alignment: Alignment.center, child: content);
  }
}

class _BottomNavigation extends StatelessWidget {
  const _BottomNavigation({required this.active, required this.onSelected});
  final PortfolioSection active;
  final ValueChanged<PortfolioSection> onSelected;

  @override
  Widget build(BuildContext context) {
    return DSCard(
      elevation: DSCardElevation.small,
      padding: const EdgeInsets.all(4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(DSRadius.xl),
        child: Wrap(
          spacing: 2,
          children: [
            _item(PortfolioSection.projects, 'Projects', LucideIcons.folder),
            _item(PortfolioSection.stack, 'Stack', LucideIcons.layers),
            _item(PortfolioSection.about, 'About', LucideIcons.userRound),
          ],
        ),
      ),
    );
  }

  Widget _item(PortfolioSection destination, String label, IconData icon) {
    final selected = active == destination;
    return DSButton(
      label: label,
      leading: Icon(icon, size: 16),
      onPressed: () => onSelected(destination),
      variant: selected ? DSButtonVariant.fill : DSButtonVariant.ghost,
      size: DSButtonSize.small,
      semanticsLabel: 'Navigate to $label',
    );
  }
}
