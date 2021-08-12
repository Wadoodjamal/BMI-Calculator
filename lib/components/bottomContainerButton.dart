import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomContainerButton extends StatelessWidget {
  BottomContainerButton({
    this.onPress,
    @required this.text,
  });

  final VoidCallback? onPress;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Container(
        height: kbottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            text.toString(),
            style: kbottomContainerTextStyle,
          ),
        ),
        decoration: BoxDecoration(
          color: kbottomContainerColor,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    );
  }
}
