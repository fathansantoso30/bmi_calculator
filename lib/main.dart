import 'package:bmi_calculator/page1.dart';
import 'package:bmi_calculator/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const PageTwo(),
      theme: ThemeData(
        backgroundColor: const Color(0xFFEFF4FC),
        primaryColor: const Color(0xFF2566CF),
      ),
    );
  }
}
