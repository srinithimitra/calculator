import 'package:calculator/color_constants.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.brown,
        scaffoldBackgroundColor: primaryColor,
      ),
      home: MyInputPage(title: Type),
    );
  }
}
