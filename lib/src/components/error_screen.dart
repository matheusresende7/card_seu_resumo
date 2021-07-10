import 'package:card_seu_resumo/src/constants/strings.dart';
import 'package:card_seu_resumo/src/controllers/home_controller.dart';
import 'package:card_seu_resumo/src/widgets/buttons/outlined_button_default.dart';
import 'package:card_seu_resumo/src/widgets/texts/text_blue.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {

  HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Theme.of(context).backgroundColor,

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            TextBlue(text: Strings.msgErroCarregamento,),

            SizedBox(height: 30,),

            OutlinedButtonDefault(
              text: Strings.atualizar,
              onPressed: () {homeController.updateScreen();},
            ),

          ],
        ),
      ),

    );

  }
}
