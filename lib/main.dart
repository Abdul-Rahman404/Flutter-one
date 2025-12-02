import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.amber,( to change whole app BG)      
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[const Color.fromARGB(255, 8, 44, 252),const Color.fromARGB(255, 0, 19, 76)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
          child: const Center
          (child: Text("Bismillah")),
        ),
      ),
    ),
  );
}
