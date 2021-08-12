import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromARGB(0xFF, 10, 14, 33),
        scaffoldBackgroundColor: Color.fromARGB(0xFF, 10, 14, 33),
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
