import 'package:flutter/material.dart';
import 'package:quiz_app/constants/dimens.dart';
import 'package:quiz_app/constants/quiz_colors.dart';

class CuestionsScreen extends StatefulWidget {
  const CuestionsScreen({super.key});

  @override
  State<CuestionsScreen> createState() {
    return _CuestionsScreenState();
  }
}

class _CuestionsScreenState extends State<CuestionsScreen> {
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
