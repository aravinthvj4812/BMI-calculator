import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF0c1234),
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
          appBarTheme: AppBarTheme(color: Color(0xFF0c1234))),
      home: InputPage(),
    );
  }
}
