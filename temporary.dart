import 'package:flutter/material.dart';
import 'Images.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold( backgroundColor: const Color.fromARGB(255, 30, 132, 216), 
        body:Container(
       child:  Column(
        children: [
          Container(
            child: image_adder(),
          ),
          SizedBox(height: 50,),
          Container(
            child:text_adder() ,
          )



        ],
       ),
       
      
        )
      ),
    ),
  );
}
