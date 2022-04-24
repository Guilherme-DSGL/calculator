import 'package:flutter/material.dart';

import 'keyboard_key.dart';

class KeyBoard extends StatelessWidget {
  const KeyBoard({Key? key, required this.function}) : super(key: key);
  final void Function(String) function;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Flexible(
        flex: 1,
        child: Row(
          children: [
            Flexible(
                flex: 1,
                child: KeyBoardKey.action(
                  text: '/',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey.action(
                  text: '*',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey.action(
                  text: 'AC',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey.action(
                  text: '<-',
                  function: function,
                )),
          ],
        ),
      ),
      Flexible(
        flex: 1,
        child: Row(
          children: [
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  text: '1',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  text: '2',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  text: '3',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey.action(
                  text: '+',
                  function: function,
                )),
          ],
        ),
      ),
      Flexible(
        flex: 1,
        child: Row(
          children: [
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  text: '4',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  text: '5',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  text: '6',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey.action(
                  text: '-',
                  function: function,
                )),
          ],
        ),
      ),
      Flexible(
        flex: 1,
        child: Row(
          children: [
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  text: '7',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  text: '8',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  text: '9',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey.action(
                  text: '%',
                  function: function,
                )),
          ],
        ),
      ),
      Flexible(
        flex: 1,
        child: Row(
          children: [
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  text: '0',
                  function: function,
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  text: '.',
                  function: function,
                )),
            Flexible(
                flex: 2,
                child: KeyBoardKey.action(
                  text: '=',
                  function: function,
                )),
          ],
        ),
      ),
    ]);
  }
}
