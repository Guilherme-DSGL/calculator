import 'package:flutter/material.dart';

class KeyBoardKey extends StatelessWidget {
  const KeyBoardKey(
      {Key? key,
      required this.color,
      required this.text,
      required this.function})
      : super(key: key);
  final Color color;
  final String text;
  final Function() function;
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
            color: color, border: Border.all(color: Colors.black)),
        width: mediaQuery.width,
        child: Align(child: Text(text, style: const TextStyle(fontSize: 20))),
      ),
    );
  }
}
