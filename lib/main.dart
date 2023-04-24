import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: ResultPage(),
    );
  }
}
