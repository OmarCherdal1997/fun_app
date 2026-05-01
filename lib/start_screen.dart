import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.startQuiz, {Key? key}) : super(key: key);

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min ,
        children: [
          Opacity(opacity:  0.5, child: Image.asset('assets/images/quiz-logo.png', width: 300, color: Colors.white,)),
          const SizedBox(height: 80,),
          Text('Learn Flutter the fun way!', style: GoogleFonts.lato(fontSize: 24, color: Colors.white),) ,
          const SizedBox(height: 80,),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            }, 
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), textStyle: GoogleFonts.lato(fontSize: 24)),  
            icon: Icon(Icons.arrow_forward),
            label: const Text('Start Quiz!'),
            // child: Text('Start Quiz!'), 
          )
        ],
      ),
    );
  }
}