import 'package:card_seu_resumo/src/components/card_resumo.dart';
import 'package:card_seu_resumo/src/components/error_screen.dart';
import 'package:card_seu_resumo/src/components/loading_data.dart';
import 'package:card_seu_resumo/src/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {

          return FutureBuilder(
              future: _.getApi(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {

                  case ConnectionState.none:
                  case ConnectionState.waiting:

                    return LoadingData();

                  default:

                    if(snapshot.hasError)
                      return ErrorScreen();

                    else return CardResumo(controller: _,);

                }
              }
          );

        }
    );

  }
}
