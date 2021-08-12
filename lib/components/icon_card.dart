import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconCard extends StatelessWidget {
  IconCard({@required this.icon, @required this.text});

  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kiconSize,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(text!, style: ktextStyle),
      ],
    );
  }
}
