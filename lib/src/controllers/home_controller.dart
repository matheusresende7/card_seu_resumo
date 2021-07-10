import 'dart:async';
import 'dart:convert';
import 'package:card_seu_resumo/src/shared/api.dart';
import 'package:get/get.dart';
//import 'package:hasura_connect/hasura_connect.dart';
import 'package:http/http.dart' as http;

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
  String testApi = '';

  int total = 0;
  int id = 0;
  bool hasHistory = false;
  int cdi = 0;
  int gain = 0;
  int profitability = 0;

  Future <void> getApi () async {

    //http.Response response = await http.get(Uri.parse(Api.apiTeste));
    //testApi = json.decode(response.body)['results']['currencies']['USD']['buy'];
    /*testApi = json.decode(response.body)[0]['user'];
    print('status code e: ' + response.statusCode.toString());
    print('o retorno e: ' + testApi.toString());*/

    http.Response response = await http.get(Uri.parse(Api.endpoint));

    total = json.decode(response.body)[0]['total'];
    //id = json.decode(response.body)[0]['id'];
    hasHistory = json.decode(response.body)[0]['hasHistory'];
    cdi = json.decode(response.body)[0]['cdi'];
    gain = json.decode(response.body)[0]['gain'];
    profitability = json.decode(response.body)[0]['profitability'];

    print('status code e: ' + response.statusCode.toString());
    print('total e: ' + total.toString());
    print('id e: ' + id.toString());
    print('hasHistory e: ' + hasHistory.toString());
    print('cdi e: ' + cdi.toString());
    print('gain e: ' + gain.toString());
    print('profitability e: ' + profitability.toString());

  }



  //*****************************UPDATE SCREEN**********************************
  void updateScreen () async {
    update();
  }



}