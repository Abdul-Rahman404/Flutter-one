import 'package:adv_app/Quiz_Screen.dart';
import 'package:flutter/material.dart';
import 'Images.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();

  }

}

class _QuizState extends State<Quiz>{
  Widget activeScreen = const image_adder();
  void SwitchScreen(){
    setState(() {
      activeScreen = const QuizScreen(); //  Rendering Content Conditionally
    });
    
  }

  @override
  Widget build(context) {
    return  MaterialApp(
      home: Scaffold( backgroundColor: const Color.fromARGB(255, 30, 132, 216), 
        body:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[Colors.blue,const Color.fromARGB(255, 2, 83, 150)],)
          ),
          child: Center( 
            child: activeScreen, // Rendering Content Conditionally
          ),
        )
        )
        
      );

  }

}
