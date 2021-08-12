import 'package:flutter/material.dart';

class YourResultTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 20.0, left: 25.0),
      child: Text(
        'Your Results',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
