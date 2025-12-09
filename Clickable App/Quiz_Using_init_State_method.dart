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
  Widget? activeScreen  ; //it could be null
  //we havent connected image_adder which has the button to Change the Screen so that something happens when we click the button 
  // something will happen if we trigger this SwitchScreen Function ( Lec 61 )
  //image_adder need the acsess of of this SwitchScreen Function
  //We will add the name of Function in the image_adder without () because () after the name of function will excute it we want it be as a pointer to SwitchScreen. 
 
  @override //State<> has it = WATCH LEC 62,63
  void initState() {
    activeScreen = image_adder(SwitchScreen);
    super.initState();
  }
  
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
