import 'package:flutter/material.dart';
import 'package:quiz_app/components/gradient_container.dart';
import 'package:quiz_app/screens/start_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        child: StartScreen(),
      ),
    ),
  ));
}
