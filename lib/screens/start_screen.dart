import 'package:flutter/material.dart';
import 'package:quiz_app/components/button.dart';
import 'package:quiz_app/constants/dimens.dart';
import 'package:quiz_app/constants/quiz_colors.dart';

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
            width: 300,
          ),
          const SizedBox(
            height: Dimens.paddingXXXL,
          ),
          const Text('Learn Flutter the fun way!',
              style: TextStyle(
                  color: Color(QuizColors.onPrimaryColor),
                  fontSize: Dimens.title)),
          const SizedBox(
            height: Dimens.paddingXXL,
          ),
          Button(
            "Start Quiz",
            const Icon(Icons.arrow_right_alt),
            () => print("Start Quiz!!!!"),
          )
        ],
      ),
    );
  }
}
