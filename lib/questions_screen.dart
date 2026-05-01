import 'package:flutter/material.dart';
import 'package:fun_app/answer_button.dart';
import 'package:fun_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currenAuestionsIndex = 0;
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    answerQuestion(String answer) {
      setState(() {
        currenAuestionsIndex++;
      });
    }
    
    return SizedBox(
      width: double.infinity,
      child:  Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                   Text(currentQuestion.text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                      ),
                  const SizedBox(height: 30),
                  ...currentQuestion.getShuffledAnswers().map((answer) {
                    return AnswerButton(answerText: answer, onTap: () => answerQuestion(answer),);
                  }),
                ],
              ),
          ],
        ),
      ),
    );
  }
}