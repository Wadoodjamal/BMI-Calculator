import 'package:flutter/material.dart';

class CustomRoundShapeButtons extends StatelessWidget {
  CustomRoundShapeButtons({@required this.onPress, @required this.icon});

  final VoidCallback? onPress;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0.0,
      fillColor: Colors.white54,
      shape: CircleBorder(),
      child: Icon(icon),
      constraints: BoxConstraints(
        minHeight: 50.0,
        minWidth: 50.0,
      ),
    );
  }
}
