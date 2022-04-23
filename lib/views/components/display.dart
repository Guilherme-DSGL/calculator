import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: mediaQuery.width,
      height: mediaQuery.height,
      color: Colors.black,
      child: const Align(
        alignment: Alignment.bottomRight,
        child: Text(
          '55560',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
    );
  }
}
