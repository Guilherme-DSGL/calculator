import 'package:flutter/material.dart';

import 'keyBoardKey.dart';

class KeyBoard extends StatelessWidget {
  const KeyBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Flexible(
        flex: 1,
        child: Row(
          children: [
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '/',
                  function: () {
                    print('asdasd');
                  },
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '*',
                  function: () {},
                )),
            Flexible(
                flex: 2,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '<-',
                  function: () {},
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
                  color: Colors.orange,
                  text: '1',
                  function: () {
                    print('asdasd');
                  },
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '2',
                  function: () {},
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '3',
                  function: () {},
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '+',
                  function: () {},
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
                  color: Colors.orange,
                  text: '4',
                  function: () {
                    print('asdasd');
                  },
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '5',
                  function: () {},
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '6',
                  function: () {},
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '-',
                  function: () {},
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
                  color: Colors.orange,
                  text: '7',
                  function: () {
                    print('asdasd');
                  },
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '8',
                  function: () {},
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '9',
                  function: () {},
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '%',
                  function: () {},
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
                  color: Colors.orange,
                  text: '0',
                  function: () {
                    print('asdasd');
                  },
                )),
            Flexible(
                flex: 1,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '.',
                  function: () {},
                )),
            Flexible(
                flex: 2,
                child: KeyBoardKey(
                  color: Colors.orange,
                  text: '=',
                  function: () {},
                )),
          ],
        ),
      ),
    ]);
  }
}
