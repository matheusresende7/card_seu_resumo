import 'dart:async';
import 'dart:convert';
import 'package:card_seu_resumo/src/models/wealth_summary.dart';
import 'package:card_seu_resumo/src/shared/endpoints.dart';
import 'package:get/get.dart';
//import 'package:hasura_connect/hasura_connect.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class HomeController extends GetxController {



  //*********************************OBTENDO API********************************
  /*HasuraConnect conection = HasuraConnect(
      Endpoints.url,
    headers: {
        Endpoints.contentType: Endpoints.applicationJson,
        Endpoints.xHasuraAdminSecret: Endpoints.fliperDevTest2020
    },
  );*/

  String wealthTable = """
    subscription {
      wealthSummary {
        cdi
        gain
        hasHistory
        id
        profitability
        total
      }
    }
  """;

  /*@override
  void onInit() {
    super.onInit();

    var snapshot = conection.subscription(wealthTable);

    snapshot.listen ((data) {
      print('${data['data']['wealthSummary'][1].toString()}');
      print('${data['data']['wealthSummary'][1]['cdi'].toString()}');
    });

  }*/



  //*****************************FUTURE BUILDER*********************************
  double? total = 0.00;
  int? id = 0;
  bool? hasHistory = false;
  double? cdi = 0.00;
  double? gain = 0.00;
  double? profitability = 0.00;

  Future <void> getApi () async {

    http.Response response = await http.get(Uri.parse(Endpoints.endpoint));

    var json = jsonDecode(response.body)[id];

    var wealthSummary = WealthSummary.fromJson(json);

    total = wealthSummary.total! * 100;
    cdi = wealthSummary.cdi! / 10000;
    gain = wealthSummary.gain! / 10;
    profitability = wealthSummary.profitability! / 10000;

  }



  //*****************************UPDATE SCREEN**********************************
  void updateScreen () async {
    update();
  }



  //****************************FORMATAÇÃO DE MILHARES**************************
  final formatoMilhares = NumberFormat.currency(
    locale: 'pt_BR',
    symbol: 'R\$',
    decimalDigits: 2,
  );



}