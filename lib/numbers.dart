import 'package:flutter/material.dart';
//import 'display.dart';


class Numbers extends StatefulWidget {
  final Function(String) onButtonPressed;
  const Numbers({super.key, required this.onButtonPressed});

  @override
  State<Numbers> createState() => _NumberState();
}
//Numbers(onButtonPressed: updateDisplay);

class _NumberState extends State<Numbers> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 4,
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(9, (index) {
                final number = index + 1;
                return ElevatedButton(
                  onPressed: () => widget.onButtonPressed(number.toString()),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Text('$number', style: TextStyle(fontSize: 24),),
                );
              },
              ),
            )
          );
  }
}