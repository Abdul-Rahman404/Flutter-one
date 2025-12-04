import 'package:flutter/material.dart';

class Styledtext extends StatelessWidget{
  const Styledtext(this.text,{super.key});
  //use this this.text to in the constructor to get a value 
  //and right the same named var down here  
  // now while calling this widget we give an argument so that we can use the text on our own or new text everytime we call this widget
  final String text;
 
  @override
  Widget build(context) {
    return  Text(
                text, // using the argument we gave and revieved through the constructor  
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),

        );
  }

}
