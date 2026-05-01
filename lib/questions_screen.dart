import 'package:flutter/material.dart';
import 'package:fun_app/answer_button.dart';
import 'package:fun_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child:  Column(
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(currentQuestion.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ) ),
                const SizedBox(height: 30),
                ...currentQuestion.answers.map((answer) {
                  return AnswerButton(answerText: answer, onTap: () => {},);
                }),
              ],
            ),
        ],
      ),
    );
  }
}