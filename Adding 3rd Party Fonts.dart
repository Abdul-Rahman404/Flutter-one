import 'package:flutter/material.dart';
import 'answer_Button.dart';
import 'data/questions.dart';
import 'package:google_fonts/google_fonts.dart'; //importing google fonts from pubspec.ymal

class QuizScreen extends StatefulWidget{
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState(){
    return _QuizScreenState();
  }

}

class _QuizScreenState extends State<QuizScreen>{
  var currentQuestionIndex=0;
  void answerQuestion(){
    setState(() {
           currentQuestionIndex+=1;
    });

  } 

  @override
  Widget build( context) {
    final currentQuestion = questions[currentQuestionIndex];
      return SizedBox( //cover AS much space as possible 
        width: double.infinity, // cover AS much space as possible 
        child: Container(
           margin: EdgeInsets.all(40), // margin on all sides
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // center it from upside down 
            crossAxisAlignment: CrossAxisAlignment.stretch, // left right sa full strech 
          children: [
             Text(currentQuestion.text,style:GoogleFonts.notoSans( //USING Font from google third party 
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
             ),
            textAlign: TextAlign.center, // question text centerd
            ),
            SizedBox(height: 30,),
            ...currentQuestion.ShuffledAnswers().map((answer){  
              return answerButton(answer, onTap: answerQuestion); // using mapping method and Spread Operator
            }
            ) 
          
          ],
          
          ),
        ),
      );
      
  }
  
}
