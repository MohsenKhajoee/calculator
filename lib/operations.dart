import 'package:flutter/material.dart';

class Operation extends StatelessWidget {
  final Function(String) onButtonPressed;
  
  const Operation({super.key, required this.onButtonPressed});

    static final List<Map<String, dynamic>> operations = [
  {'label': '+', 'action': () => print('Add')},
  {'label': '-', 'action': () => print('Subtract')},
  {'label': '*', 'action': () => print('Multiply')},
  {'label': '/', 'action': () => print('Divide')},
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 100,
        backgroundColor: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: operations.map((op) {
            return TextButton(     
              onPressed: () {
                onButtonPressed(op['label']);
                Navigator.pop(context); // optional
              },
              child: Text(
                op['label'],
                style: TextStyle(
                  fontFamily: 'Garamond',
                  fontSize: 56,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                ),
              ),
            );
          }).toList(),
        ),
      );
  }
}