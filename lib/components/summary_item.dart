import 'package:flutter/material.dart';
import 'package:quiz_app/constants/dimens.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.item, {super.key});

  final Map<String, Object> item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(((item['question_index'] as int) + 1).toString()),
        Expanded(
          child: Column(
            children: [
              Text(item['question'] as String),
              const SizedBox(height: Dimens.padding),
              Text(item['user_answer'] as String),
              Text(item['correct_answer'] as String),
            ],
          ),
        )
      ],
    );
  }
}
