import 'package:flutter/material.dart';

import 'components/display.dart';
import 'components/keyBoard.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Display(),
        KeyBoard(),
      ],
    );
  }
}
