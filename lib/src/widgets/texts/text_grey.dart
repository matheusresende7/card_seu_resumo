import 'package:card_seu_resumo/src/styles/text_sizes.dart';
import 'package:flutter/material.dart';

class TextGrey extends StatelessWidget {

  final String? text;

  TextGrey ({
    this.text,
  });

  @override
  Widget build(BuildContext context) {

    return Text(
      this.text ?? '',
      style: TextStyle (
          color: Color(0xff8b8d9c),
          fontSize: TextSizes.medium,
          fontWeight: FontWeight.w500
      ),
    );

  }
}
