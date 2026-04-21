import 'package:flutter/material.dart';
class StartScreen extends StatelessWidget {
  StartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min ,
        children: [
          Opacity(opacity:  0.5, child: Image.asset('assets/images/quiz-logo.png', width: 300, color: Colors.white,)),
          const SizedBox(height: 80,),
          const Text('Learn Flutter the fun way!', style: TextStyle(fontSize: 24, color: Colors.white),),
          const SizedBox(height: 80,),
          OutlinedButton.icon(
            onPressed: () {}, 
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), textStyle: const TextStyle(fontSize: 24)),  
            icon: Icon(Icons.arrow_forward),
            label: const Text('Start Quiz!'),
            // child: Text('Start Quiz!'), 
          )
        ],
      ),
    );
  }
}