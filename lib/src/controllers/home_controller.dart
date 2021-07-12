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
  /*HasuraConnect conexao = HasuraConnect(
      'https://harura-fliper-test.herokuapp.com/v1/graphql',
    headers: {
        'content-type': 'application/json',
        'x-hasura-admin-secret': 'fliperdevtest2020'
    },
  );

  String variavelTabela = """
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

  @override
  void onInit() {
    super.onInit();

    print('inicio testeeeeeeeeeeeee');

    var snapshot = conexao.subscription(variavelTabela);

    snapshot.listen ((data) {
      print(data);
      //print('${data['data']['wealthSummary'][1]}');
      //print('${data['data']['wealthSummary'][1]['cdi'].toString()}');
    });

    print('fim testeeeeeeeeeeeee');

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


  /*Future <WealthSummary> teste () async {
    http.Response response = await http.get(Uri.parse(Endpoints.endpoint));
    var json = jsonDecode(response.body)[1];
    var wealthSummary = WealthSummary.fromJson(json);
    return wealthSummary;
  }

  Future <void> teste1 () async {
    final wealthSummary = await teste();
    print('are babaaaaaaaaaaaaaaaaaaaaa ' + wealthSummary.id.toString());
    print('are babaaaaaaaaaaaaaaaaaaaaa ' + wealthSummary.cdi.toString());
  }

  @override
  void onInit() {
    super.onInit();
    print('iniciooooooooooooooooo');
    teste1();
    print('fimmmmmmmmmmmmmmmmm');
  }*/



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