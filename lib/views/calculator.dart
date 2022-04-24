import 'package:calculator/constans.dart';
import 'package:calculator/models/brain.dart';
import 'package:flutter/material.dart';

import 'components/display.dart';
import 'components/keyboard.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({
    Key? key,
  }) : super(key: key);

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final Brain brain = Brain();
  _onPress(String text) {
    setState(() {
      brain.displayText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: display,
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Display(
                displayText: brain.displayText,
              )),
          Flexible(
            flex: 4,
            child: KeyBoard(
              function: _onPress,
            ),
          ),
        ],
      ),
    );
  }
}
