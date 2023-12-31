import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/components/button.dart';
import 'package:quiz_app/constants/dimens.dart';
import 'package:quiz_app/constants/quiz_colors.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuizAction, {super.key});

  final void Function() startQuizAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color(QuizColors.onPrimaryColorTransparent),
          ),
          const SizedBox(
            height: Dimens.paddingXXXL,
          ),
          Text('Learn Flutter the fun way!',
              style: GoogleFonts.lato(
                  color: const Color(QuizColors.onPrimaryColor),
                  fontSize: Dimens.title,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: Dimens.paddingXXL,
          ),
          Button(
            "Start Quiz",
            const Icon(Icons.arrow_right_alt),
            () {
              startQuizAction();
            },
          )
        ],
      ),
    );
  }
}
