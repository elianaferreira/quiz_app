import 'package:flutter/material.dart';
import 'package:quiz_app/constants/dimens.dart';
import 'package:quiz_app/constants/quiz_colors.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(this.label, this.onPressAction, {super.key});

  final String label;
  final void Function() onPressAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: Dimens.padding, horizontal: Dimens.paddingXXL),
      child: ElevatedButton(
        onPressed: onPressAction,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
              vertical: Dimens.padding, horizontal: Dimens.paddingXXL),
          foregroundColor: const Color(QuizColors.onPrimaryColor),
          backgroundColor: const Color(QuizColors.accent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.corderRadius),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: Dimens.answerButtonText,
          ),
        ),
      ),
    );
  }
}
