import 'package:flutter/material.dart';
import 'package:quiz_app/constants/quiz_colors.dart';

class Button extends StatelessWidget {
  const Button(this.label, this.onPressAction, {super.key});

  final String label;
  final void Function() onPressAction;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressAction,
      style: ElevatedButton.styleFrom(
          foregroundColor: const Color(QuizColors.onPrimaryColor),
          backgroundColor: const Color(QuizColors.primaryColor)),
      child: Text(label,
          style: const TextStyle(
            fontSize: 20,
          )),
    );
  }
}
