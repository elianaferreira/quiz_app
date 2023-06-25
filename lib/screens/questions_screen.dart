import 'package:flutter/material.dart';
import 'package:quiz_app/components/rounded_button.dart';
import 'package:quiz_app/constants/dimens.dart';
import 'package:quiz_app/constants/quiz_colors.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "What are the main building block of Flutter's UI",
            style: TextStyle(
                color: Color(QuizColors.onPrimaryColor),
                fontSize: Dimens.subtitle),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: Dimens.paddingXXL,
          ),
          RoundedButton("Answer1", () {}),
          RoundedButton("Answer1", () {}),
          RoundedButton("Answer1", () {}),
        ],
      ),
    );
  }
}
