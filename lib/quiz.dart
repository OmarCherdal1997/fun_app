import 'package:flutter/material.dart';
import 'package:fun_app/start_screen.dart';
import 'package:fun_app/questions_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);
  @override 
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget = activeScreen == 'questions-screen'
        ? QuestionsScreen()
        : StartScreen(switchScreen);
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