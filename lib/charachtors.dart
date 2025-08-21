import 'package:flutter/material.dart';

class Charachtors extends StatelessWidget {
  final Function(String) onButtonPressed;
  const Charachtors({super.key, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        buildButton('(', () => onButtonPressed('(')),
        buildButton('0', () => onButtonPressed('0')),
        buildButton('.', () => onButtonPressed('.')),
        buildButton(')', () => onButtonPressed(')')),
      ],
      ),
    );
  }
}


Widget buildButton(String label, void Function() onPressed) {
  return Expanded(
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.purpleAccent,
      ),
      child: Text(label, style: TextStyle(fontSize: 24)),
    ),
  );
}

