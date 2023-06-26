import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/constants/dimens.dart';
import 'package:quiz_app/constants/quiz_colors.dart';

class CircularItem extends StatelessWidget {
  const CircularItem(this.text, this.isCorrect, {super.key});

  final String text;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.circleSize,
      width: Dimens.circleSize,
      decoration: BoxDecoration(
        border: Border.all(
            width: 2,
            color: isCorrect
                ? const Color(QuizColors.correctBackground)
                : const Color(QuizColors.errorBackground)),
        shape: BoxShape.circle,
        color: isCorrect
            ? const Color(QuizColors.correctBackground)
            : const Color(QuizColors.errorBackground),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.lato(
              fontSize: Dimens.answerButtonText, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
