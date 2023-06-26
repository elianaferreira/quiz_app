import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/components/rounded_button.dart';
import 'package:quiz_app/constants/dimens.dart';
import 'package:quiz_app/constants/quiz_colors.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestions = questions[currentQuestionIndex];

    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestions.text,
            style: GoogleFonts.lato(
                color: const Color(QuizColors.primaryLightColor),
                fontSize: Dimens.subtitle,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: Dimens.paddingXXL,
          ),
          ...currentQuestions.getShuffledAnswers().map(
            (answer) {
              return RoundedButton(answer, answerQuestion);
            },
          ),
        ],
      ),
    );
  }
}
