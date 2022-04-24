import 'package:calculator/constans.dart';
import 'package:flutter/material.dart';

class KeyBoardKey extends StatelessWidget {
  const KeyBoardKey(
      {Key? key, this.color = grey, required this.text, required this.function})
      : super(key: key);
  const KeyBoardKey.action(
      {Key? key,
      this.color = orange,
      required this.text,
      required this.function})
      : super(key: key);

  final Color color;
  final String text;
  final void Function(String) function;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(deafultPadding),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius)))),
        onPressed: () => function(text),
        child: Align(
            child: Text(text,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w800, color: white))),
      ),
    );
  }
}
