import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/components/button.dart';
import 'package:quiz_app/components/questions_summary.dart';
import 'package:quiz_app/constants/dimens.dart';
import 'package:quiz_app/constants/quiz_colors.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.choosenAnswers, {super.key});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: Dimens.paddingXXXL),
        Text(
          'Result',
          style: GoogleFonts.lato(
              color: const Color(QuizColors.onPrimaryColor),
              fontSize: Dimens.subtitle,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: Dimens.paddingXXL),
        QuestionSummary(getSummaryData()),
        Button('Retry', const Icon(Icons.autorenew), () {})
      ],
    );
  }
}
