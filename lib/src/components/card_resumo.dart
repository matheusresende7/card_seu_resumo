import 'package:card_seu_resumo/src/constants/strings.dart';
import 'package:card_seu_resumo/src/widgets/buttons/outlined_button_default.dart';
import 'package:card_seu_resumo/src/widgets/texts/text_blue.dart';
import 'package:card_seu_resumo/src/widgets/texts/text_grey.dart';
import 'package:flutter/material.dart';

class CardResumo extends StatelessWidget {

  final String total;
  final String cdi;
  final String gain;
  final String profitability;

  CardResumo ({
    this.total,
    this.cdi,
    this.gain,
    this.profitability,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Theme.of(context).backgroundColor,

      body: Center(
        child: Container(
          height: 420,
          width: MediaQuery.of(context).size.width * 0.95,
          child: Card (
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24)
            ),
            color: Theme.of(context).accentColor,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
              child: Column (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      TextBlue(text: Strings.seuResumo),

                      GestureDetector(
                        child: Icon(
                          Icons.more_vert,
                          color: Theme.of(context).disabledColor,
                        ),
                        onTap: () {},
                      ),

                    ],
                  ),

                  Column(
                    children: [
                      TextGrey(text: Strings.valorInvestido,),
                      SizedBox(height: 10,),
                      TextBlue(text: this.total),
                    ],
                  ),

                  Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextGrey(text: Strings.rentabilidadeMes,),
                          TextBlue(text: this.profitability),
                        ],
                      ),

                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextGrey(text: Strings.cdi,),
                          TextBlue(text: this.cdi),
                        ],
                      ),

                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextGrey(text: Strings.ganhoMes,),
                          TextBlue(text: this.gain),
                        ],
                      ),

                    ],
                  ),

                  Container(
                    color: Theme.of(context).disabledColor,
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 0.5,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButtonDefault(
                        text: Strings.verMais.toUpperCase(),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),

    );

  }
}
