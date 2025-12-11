import 'package:flutter/material.dart';
import 'answer_Button.dart';
import 'data/questions.dart';

class QuizScreen extends StatefulWidget{
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState(){
    return _QuizScreenState();
  }

}

class _QuizScreenState extends State<QuizScreen>{
  @override
  Widget build( context) {
    final currentQuestion = questions[0];
      return SizedBox( //cover AS much space as possible 
        width: double.infinity, // cover AS much space as possible 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // center it from upside down 
        children: [
           Text(currentQuestion.text,style: TextStyle(
            color: Colors.white,

          ),
          ),
          SizedBox(height: 30,),
          
          answerButton(currentQuestion.answers[0], onTap: (){}), // onTap function is A named Argument 
          answerButton(currentQuestion.answers[1], onTap: (){}),
          answerButton(currentQuestion.answers[2], onTap:(){}),

        
        ],
        
        ),
      );
      
  }
  
}
