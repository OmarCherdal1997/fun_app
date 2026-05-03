import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text('Question: ${data['question'] as String}'),
                      const SizedBox(width: 20,),
                      Text('Your answer: ${data['user_answer'] as String}'),
                      Text('Correct answer: ${data['correct_answer'] as String}'),
                    ],
                  ),  
              )      
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}