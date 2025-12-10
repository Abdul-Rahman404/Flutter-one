import 'package:flutter/material.dart';

class answerButton extends StatelessWidget{
const answerButton(this.answerText,{super.key,required this.onTap,});

final String answerText;
final void Function() onTap ; 

  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:Color.fromARGB(255, 20, 106, 176),
        foregroundColor: Colors.white, //Text color inside Button
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40)
       
       // shape:RoundedRectangleBorder(
        //  borderRadius: BorderRadiusGeometry.circular(20),
       // )  all this to add coustome rounded corners

      ),
      onPressed:onTap, 
      child: Text(answerText)
            );
  }
}
