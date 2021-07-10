import 'package:card_seu_resumo/src/constants/strings.dart';
import 'package:card_seu_resumo/src/widgets/texts/text_blue.dart';
import 'package:flutter/material.dart';

class LoadingData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Theme.of(context).backgroundColor,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Center(
            child: Container(
              height: 40,
              width: 40,
              child: CircularProgressIndicator(
                backgroundColor: Theme.of(context).disabledColor,
                valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                strokeWidth: 3,
              ),
            ),
          ),

          SizedBox(height: 30,),

          TextBlue(text: Strings.carregandoDados,),

        ],
      ),

    );

  }
}
