import 'package:flutter/material.dart';

import 'components/display.dart';
import 'components/keyBoard.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: const [
          Flexible(flex: 1, child: Display()),
          Flexible(flex: 4, child: KeyBoard()),
        ],
      ),
    );
  }
}
