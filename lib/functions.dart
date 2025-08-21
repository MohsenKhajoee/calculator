import 'package:flutter/material.dart';

class Functions extends StatelessWidget {
  final Function() clPressed;
  final Function() hisPressed;
  final Function() equals;
  final Function() remove;
  const Functions({super.key, required this.clPressed, required this.hisPressed, required this.equals, required this.remove});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildActionButton(
            onPressed: clPressed,
            child: const Text('cl', style: TextStyle(fontSize: 24)),
          ),
          buildActionButton(
            onPressed: remove,
            child: const Icon(Icons.backspace, size: 24),
          ),
          buildActionButton(
            onPressed: equals,
            child: const Text('=', style: TextStyle(fontSize: 24)),
          ),
          buildActionButton(
            onPressed: hisPressed,
            child: const Text('His', style: TextStyle(fontSize: 24)),
          ),
        ],
      )
    );
  }
}

Widget buildActionButton({
  required VoidCallback onPressed,
  Widget? child,
}) {
  return Expanded(
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.purple,
      ),
      child: child ?? const SizedBox.shrink(),
    ),
  );
}
