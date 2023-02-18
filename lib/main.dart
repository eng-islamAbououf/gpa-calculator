import 'package:flutter/material.dart';
import 'package:gpa_calculator/splash_screen.dart';

void main() => 
  runApp(const GPACalculator());

class GPACalculator extends StatelessWidget {
  const GPACalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:SplashScreen(),
    );
  }
}
