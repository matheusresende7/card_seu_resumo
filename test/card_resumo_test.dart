import 'package:card_seu_resumo/src/components/card_resumo.dart';
import 'package:card_seu_resumo/src/constants/strings.dart';
import 'package:card_seu_resumo/src/controllers/home_controller.dart';
import 'package:card_seu_resumo/src/widgets/buttons/outlined_button_default.dart';
import 'package:card_seu_resumo/src/widgets/texts/text_blue.dart';
import 'package:card_seu_resumo/src/widgets/texts/text_grey.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {


  HomeController controller = HomeController();


  testWidgets('Body Validation', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: CardResumo (controller: controller,),));

    ///Card
    final card = find.byType(Card);
    expect(card, findsOneWidget);

    ///Options
    final options = find.widgetWithIcon(GestureDetector, Icons.more_vert);
    expect(options, findsOneWidget);

    ///Seu resumo
    final seuResumo = find.widgetWithText(TextBlue, Strings.seuResumo);
    expect(seuResumo, findsOneWidget);

    ///Valor investido
    final valorInvestido = find.widgetWithText(TextGrey, Strings.valorInvestido);
    expect(valorInvestido, findsOneWidget);

    ///Rentabilidade/mes
    final rentabilidadeMes = find.widgetWithText(TextGrey, Strings.rentabilidadeMes);
    expect(rentabilidadeMes, findsOneWidget);

    ///CDI
    final cdi = find.widgetWithText(TextGrey, Strings.cdi);
    expect(cdi, findsOneWidget);

    ///Ganho/mes
    final ganhoMes = find.widgetWithText(TextGrey, Strings.ganhoMes);
    expect(ganhoMes, findsOneWidget);

    ///Ver mais button
    final verMaisButton = find.widgetWithText(OutlinedButtonDefault, Strings.verMais.toUpperCase());
    expect(verMaisButton, findsOneWidget);
  },);



}