import 'package:flutter/material.dart';
import 'dart:math'; // to genrate Random Number...

class DiceRoller extends StatefulWidget{
 const DiceRoller ({super.key}); //constractor

  //in StatefulWidget we dont add build method like StatelessWidget so we will do this instead...
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>{


    var activeImage='assets/images/dice-1.png' ; 
      //Defining a Function for the onpressed value in button..
    void rollDice(){ // < there is another approch of doing it in lec 51 >.. 
      int dicerollNum=Random().nextInt(6)+1; //function came from import math 6+1 becuase its 0 to 6...

      setState(() {
         activeImage='assets/images/dice-$dicerollNum.png' ; //$ placeholder 
      });
      //“setState Flutter ko batata hai ke UI ko dubara redraw/update karo.”
      //“setState() bolta hai: ‘maine variable change kiya hai, ab screen ko update karo.’”



  }


  @override
  Widget build( context) {
    return Column( mainAxisSize: MainAxisSize.min, // to center the everthing inside column  
        children: [ 
          Image.asset(activeImage,width: 200,), //using the variable after changing its value from the rolldice function
          SizedBox(height: 20,),// to addd spacing in between something aternative of padding aswell 
          TextButton(onPressed:rollDice ,
          style: TextButton.styleFrom( // adding style to button
          backgroundColor: Colors.amberAccent, // Bg color 
            foregroundColor: Colors.black, //for fornt color
            textStyle: TextStyle(fontSize: 18) //font size 

          ),
           child: Text("Roll Dice")) // using the empty function here without () (we can also do (){}-- anonymous func in front of onPressed )  
          ],);

  }

  }


