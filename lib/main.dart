import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.amber,( to change whole app BG) we can add Gradient in it as well by putting  DecoratedBox
        // inside the body: then add decoration: BoxDecoration( gradient: LinearGradient( colors: [.....]
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 8, 44, 252),
                const Color.fromARGB(255, 0, 19, 76),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
              "Allah ",
            ),
          ),
        ),
      ),
    ),
  );
}
