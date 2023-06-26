import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/components/button.dart';
import 'package:quiz_app/components/questions_summary.dart';
import 'package:quiz_app/constants/dimens.dart';
import 'package:quiz_app/constants/quiz_colors.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.choosenAnswers, this.onRestart, {super.key});

  final List<String> choosenAnswers;
  final void Function() onRestart;

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
    final summaryData = getSummaryData();
    final numTotal = questions.length;
    final numCorrectQuestions = summaryData
        .where((summary) => summary['correct_answer'] == summary['user_answer'])
        .length;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: Dimens.paddingXXXL),
        Text(
          'You answered $numCorrectQuestions out of $numTotal questions correctly!',
          style: GoogleFonts.lato(
              color: const Color(QuizColors.onPrimaryColor),
              fontSize: Dimens.subtitle,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: Dimens.paddingXXL),
        QuestionSummary(summaryData),
        const SizedBox(height: Dimens.paddingXXL),
        Button('Retry', const Icon(Icons.refresh), onRestart)
      ],
    );
  }
}
