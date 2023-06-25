import 'package:flutter/material.dart';
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
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "What are the main building block of Flutter's UI",
            style: TextStyle(
                color: Color(QuizColors.onPrimaryColor),
                fontSize: Dimens.title),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
