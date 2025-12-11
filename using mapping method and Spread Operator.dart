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
          ...currentQuestion.answers.map((answer){  
            return answerButton(answer, onTap: (){}); // using mapping method and Spread Operator
          }
          ) 
        
        ],
        
        ),
      );
      
  }
  
}
