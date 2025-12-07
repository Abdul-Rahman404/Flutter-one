import 'package:flutter/material.dart';


class image_adder extends StatelessWidget {
const image_adder({super.key});
  void onpress(){

  }
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // to make column center
      crossAxisAlignment: CrossAxisAlignment.center, // to make column center

        children: [
          Container(
            child: Image.asset('assets/images/quiz-logo.png', 
           color: const Color.fromARGB(150, 255, 255, 255), // use it inside image.asset to make the image transparent by moving the second bar
            width: 200),
          ),
          SizedBox(height: 30,),
          Container(
            child: const Text("Should We Start ?", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)) ,
          ),
          SizedBox(height: 20,),
          Container(
            child: OutlinedButton.icon(onPressed: onpress, // 
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ) , // OutlinedButton.icon gives us label instead of child 
            icon: const Icon(Icons.add_task), // to add icon 
             label: Text("Lets Go")) ,
          )
        ],
      
    );
  }
}
