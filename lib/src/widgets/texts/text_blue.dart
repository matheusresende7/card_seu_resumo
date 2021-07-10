import 'package:card_seu_resumo/src/styles/text_sizes.dart';
import 'package:flutter/material.dart';

class TextBlue extends StatelessWidget {

  final String text;

  TextBlue ({
    this.text,
  });

  @override
  Widget build(BuildContext context) {

    return Text(
      this.text,
      style: TextStyle (
          color: Theme.of(context).primaryColor,
          fontSize: TextSizes.xLarge,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.5,
      ),
      textAlign: TextAlign.center,
    );

  }
}
