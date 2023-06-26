import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/components/circular_item.dart';
import 'package:quiz_app/constants/dimens.dart';
import 'package:quiz_app/constants/quiz_colors.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.item, {super.key});

  final Map<String, Object> item;

  @override
  Widget build(BuildContext context) {
    final isCorrect = item['user_answer'] == item['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircularItem(
            ((item['question_index'] as int) + 1).toString(), isCorrect),
        const SizedBox(width: Dimens.padding),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item['question'] as String,
                  style: GoogleFonts.lato(
                      fontSize: Dimens.itemHeader,
                      color: const Color(QuizColors.onPrimaryColor),
                      fontWeight: FontWeight.bold)),
              Text(
                item['user_answer'] as String,
                style: GoogleFonts.lato(
                    color: const Color(QuizColors.answer),
                    fontSize: Dimens.answerButtonText,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                item['correct_answer'] as String,
                style: GoogleFonts.lato(
                    color: const Color(QuizColors.correctBackground),
                    fontSize: Dimens.answerButtonText,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: Dimens.padding),
            ],
          ),
        )
      ],
    );
  }
}
