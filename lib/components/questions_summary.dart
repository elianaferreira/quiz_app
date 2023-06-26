import 'package:flutter/material.dart';
import 'package:quiz_app/components/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return SummaryItem(data);
      }).toList(),
    );
  }
}
