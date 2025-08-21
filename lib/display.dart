import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String displayText;
  const Display({super.key, required this.displayText});

 

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
        color: Colors.black,
      ),
      width: double.infinity,
      child: Text(
        displayText,
        style: TextStyle(fontSize: 24,color: Colors.blueAccent),
        textAlign: TextAlign.right,
      ),
      ),
    );
  }



  
}

