import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/constants/dimens.dart';
import 'package:quiz_app/constants/quiz_colors.dart';

class Button extends StatelessWidget {
  const Button(this.label, this.icon, this.onPressAction, {super.key});

  final String label;
  final void Function() onPressAction;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressAction,
      style: ElevatedButton.styleFrom(
          foregroundColor: const Color(QuizColors.onPrimaryColor),
          backgroundColor: const Color(QuizColors.primaryColor)),
      icon: icon,
      label: Text(label,
          style: GoogleFonts.lato(
            fontSize: Dimens.buttonText,
          )),
    );
  }
}
