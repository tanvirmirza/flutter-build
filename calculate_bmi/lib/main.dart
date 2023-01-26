import 'package:flutter/material.dart';
import 'package:calculate_bmi/bmi_calculator/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'BMI Calculate',
      home: const InputPage(),
    );
  }
}