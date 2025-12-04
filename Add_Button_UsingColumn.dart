import 'package:flutter/material.dart';


//declareing a variable and asigning a value into it 
var startAlignment=Alignment.topLeft;
// instead of var we can add the type of variable as well like Alignment (the VARIABLE NAME HERE)
//Alignment? this means that the type of variable can be Alignment type or null 
//using them in begin and end inside gradient 
// we can use final as a keyword instead of var to make it unchangable
// const an also can be used  
var endAlignment=Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //Widget is a return type of this function build
  //extends StatelessWidget matlab ye class ek StatelessWidget ka child hai Iska matlab ye widget immutable hai(state change nahi hoti)

  const GradientContainer(this.color1,this.color2,{super.key}); //constractor
  final Color color1;
  final Color color2;

  //Flutter widgets use a key, and we pass it to the parent using super.key
  //super.key is only there because Flutter's StatelessWidget and StatefulWidget constructors expect it.
  //super,key means “Pass the key to the parent widget (StatelessWidget or StatefulWidget).”
  //Key = tag for widget → helps Flutter identify it.
  //With key: Flutter reuses existing widget → faster & memory efficient.
  //Without key: Flutter creates new widget every rebuild → more memory & CPU use.
  //Small apps: not critical
  //Big apps/lists/animations: keys improve performance
  
  //Defining a Function for the onpressed value in button..
  void onpress(){

  }


  
  @override
  //Context is the widget’s address in the app’s UI tree.
  //context = widget ka address tree mein jahan se ye call hua hai.
  //Context = widget ka address; is se widget parent ka data, theme, size, navigation aur inherited info access karta hai (stateless class ko) 

  Widget build(context) {
    return Container(
      decoration: BoxDecoration( // if we use const in the variable we have to add const here as well before BoxDecoration
        gradient: LinearGradient(
          colors : [color1,color2], //using the color from the constructor argumnet      
          begin:startAlignment, 
          end: endAlignment,
        ),
      ),
      //child = ek widget ke andar ek aur widget add karne ke liye use hota hai.
      child:  Center(
        child:Column(children: [ 
          Image.asset('assets/images/dice-2.png',width: 200,),
          TextButton(onPressed:onpress , child: Text("Roll Dice")), // using the empty function here without () (we can also do (){}-- anonymous func in front of onPressed )  
          ],),
        //child:Styledtext('Allah')
      ),
    );
  }
}

// watch lecture 45.Practice Reusable Widgets & Constractor , for some stuff like color input //  
