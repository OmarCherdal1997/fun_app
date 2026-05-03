import 'package:flutter/material.dart';
import 'package:fun_app/data/questions.dart';
import 'package:fun_app/start_screen.dart';
import 'package:fun_app/questions_screen.dart';
import 'package:fun_app/data/questions.dart';


class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);
  @override 
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }
  
  void chooseAnswer(String answer,) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'start-screen';
        selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 47, 1, 59), Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:  screenWidget,
          ),
          
          )
      );
  }
}