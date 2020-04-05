import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'utils.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
        accentColor: Colors.purpleAccent,
      ),
      home: InputPage(),
    );
  }
}

