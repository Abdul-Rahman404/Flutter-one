import 'package:flutter/material.dart';

class Styledtext extends StatelessWidget{
  const Styledtext({super.key});
  @override
  Widget build(context) {
    return  const Text(
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
          "Allah ",
        );
  }

}
