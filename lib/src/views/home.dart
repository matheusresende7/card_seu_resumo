import 'package:card_seu_resumo/src/constants/strings.dart';
import 'package:card_seu_resumo/src/controllers/home_controller.dart';
import 'package:card_seu_resumo/src/widgets/buttons/outlined_button_default.dart';
import 'package:card_seu_resumo/src/widgets/texts/text_blue.dart';
import 'package:card_seu_resumo/src/widgets/texts/text_grey.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {

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
                            TextBlue(text: 'R\$ 3.200.876,00'),
                          ],
                        ),

                        Column(
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextGrey(text: Strings.rentabilidadeMes,),
                                TextBlue(text: '2,767%'),
                              ],
                            ),

                            SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextGrey(text: Strings.cdi,),
                                TextBlue(text: '3,45%'),
                              ],
                            ),

                            SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextGrey(text: Strings.ganhoMes,),
                                TextBlue(text: 'R\$ 1.833,23'),
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
    );

  }
}
