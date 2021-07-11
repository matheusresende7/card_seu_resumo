import 'package:card_seu_resumo/src/components/loading_data.dart';
import 'package:card_seu_resumo/src/constants/strings.dart';
import 'package:card_seu_resumo/src/widgets/texts/text_blue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {



  testWidgets('Body Validation', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoadingData (),));

    ///Circular progress indicator
    final circularProgressIndicator = find.byType(CircularProgressIndicator);
    expect(circularProgressIndicator, findsOneWidget);

    ///Loading text
    final loadingText = find.widgetWithText(TextBlue, Strings.carregandoDados);
    expect(loadingText, findsOneWidget);
  },);



}