import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculator/constans.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({Key? key, required this.displayText}) : super(key: key);
  final String displayText;
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: mediaQuery.width,
      height: mediaQuery.height,
      color: display,
      child: Align(
        alignment: Alignment.bottomRight,
        child: AutoSizeText(
          displayText,
          minFontSize: 25,
          maxFontSize: 50,
          maxLines: 1,
          style: const TextStyle(
              color: white, fontSize: 50, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
