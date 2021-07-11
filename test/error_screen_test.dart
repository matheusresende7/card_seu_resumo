import 'package:card_seu_resumo/src/components/error_screen.dart';
import 'package:card_seu_resumo/src/constants/strings.dart';
import 'package:card_seu_resumo/src/widgets/buttons/outlined_button_default.dart';
import 'package:card_seu_resumo/src/widgets/texts/text_blue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {



  testWidgets('Body Validation', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ErrorScreen (),));

    ///Text error
    final errorText = find.widgetWithText(TextBlue, Strings.msgErroCarregamento);
    expect(errorText, findsOneWidget);

    ///Update button
    final updateButton = find.widgetWithText(OutlinedButtonDefault, Strings.atualizar);
    expect(updateButton, findsOneWidget);
  },);



}