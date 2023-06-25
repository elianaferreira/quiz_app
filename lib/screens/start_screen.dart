import 'package:flutter/material.dart';
import 'package:quiz_app/components/button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
          ),
          Button(
            "Start Quiz",
            () => print("Start Quiz!!!!"),
          )
        ],
      ),
    );
  }
}
