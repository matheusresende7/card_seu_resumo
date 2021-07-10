import 'package:card_seu_resumo/src/styles/text_sizes.dart';
import 'package:flutter/material.dart';

class OutlinedButtonDefault extends StatelessWidget {

  final String? text;
  final VoidCallback? onPressed;

  OutlinedButtonDefault ({
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return OutlinedButton(
      child: Text(
        this.text ?? '',
        style: TextStyle (
          color: Theme.of(context).primaryColor,
          fontSize: TextSizes.large,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        side: MaterialStateProperty.all(
          BorderSide.lerp(
              BorderSide(
                style: BorderStyle.solid,
                color: Theme.of(context).primaryColor,
                width: 1,
              ),
              BorderSide(
                style: BorderStyle.solid,
                color: Theme.of(context).primaryColor,
                width: 1,
              ),
              10.0),
        ),
      ),
      onPressed: this.onPressed ?? () {},
    );

  }
}
