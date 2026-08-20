import 'package:flutter_test/flutter_test.dart';
import 'package:raffashe/core/locale/locale_controller.dart';
import 'package:raffashe/core/theme/theme_mode_controller.dart';
import 'package:raffashe/main.dart';

void main() {
  testWidgets('App loads the projects section', (WidgetTester tester) async {
    final localeController = LocaleController();
    await tester.pumpWidget(
      MyApp(
        localeController: localeController,
        themeModeController: ThemeModeController(),
      ),
    );

    expect(find.text('Selected Projects'), findsOneWidget);
  });
}
