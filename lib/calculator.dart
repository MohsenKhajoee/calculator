import 'package:flutter/material.dart';
import 'package:CoolCalculator/charachtors.dart';
import 'package:CoolCalculator/display.dart';
import 'package:CoolCalculator/functions.dart';
import 'package:CoolCalculator/numbers.dart';
import 'package:CoolCalculator/operations.dart';
import 'package:CoolCalculator/topBar.dart';
import 'package:expressions/expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String displayText = '';
  String oldDisplayText = '';

  void updateDisplay(String value) {
    setState(() {
      displayText += value;
    });
  }

  void equals(String input) {
    setState(() {
      try {
        final expression = Expression.parse(input);
        final evaluator = const ExpressionEvaluator();
        final result = evaluator.eval(expression, {});
        oldDisplayText = displayText;
        displayText = result.toString();
      } catch (e) {
        print(e);
      }
    }); 
  }

  void remove(String input) {
    setState(() {
      if (input.isNotEmpty) {
        displayText =  input.substring(0, input.length - 1);
      }
    });
  }

  void clearDisplay() {
    setState(() {
      oldDisplayText = displayText;
      displayText = '';
    });
  }

  void showHistory() {
      setState(() {
      displayText = oldDisplayText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: TopBar(),
      drawer: Operation(onButtonPressed: updateDisplay,),
      body: Column(
        children: [
          Numbers(onButtonPressed: updateDisplay),
          Charachtors(onButtonPressed: updateDisplay),
          Functions(
            clPressed: clearDisplay,
            hisPressed: showHistory,
            equals: () => equals(displayText),
            remove: () => remove(displayText)
          ),
          Display(displayText: displayText),
        ],
      ),
    );
  }
}
