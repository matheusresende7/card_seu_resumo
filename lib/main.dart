// @dart=2.9

import 'package:card_seu_resumo/src/themes/default_theme.dart';
import 'package:card_seu_resumo/src/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: Home(),
    title: 'Card - Seu Resumo',
    debugShowCheckedModeBanner: false,
    theme: DefaultTheme().materialTheme,
  ));
}