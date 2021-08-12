import 'package:flutter/material.dart';

class ResultTextWidget extends StatelessWidget {
  ResultTextWidget({@required this.resultText, this.textStyle});

  final String? resultText;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      resultText.toString(),
      style: textStyle,
      textAlign: TextAlign.center,
    );
  }
}
