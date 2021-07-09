import 'package:flutter/material.dart';

class DefaultTheme {

  ThemeData get materialTheme {
    return ThemeData(
      primaryColor: Color(0xff3c5cb8),
      accentColor: Colors.white,
      backgroundColor: Color(0xffe8ebf6),
      disabledColor: Color(0xffa9b0c6),
      indicatorColor: Colors.green,
      errorColor: Colors.red,
    );
  }

}