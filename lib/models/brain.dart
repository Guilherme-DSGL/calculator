class Brain {
  List<String> operations = ['+', '-', '*', '/', '%'];
  String _displayText = '0';
  String _operator = '';
  List<double> _numbers = [];
  bool clear = false;

  String get displayText {
    return _displayText;
  }

  set displayText(String command) {
    if (command == 'AC') {
      allClear();
    } else if (command == '<-') {
      backSpace();
    } else if (operations.contains(command) && _operator == '') {
      saveInMemory(_displayText, command);
    } else if (command == '=') {
      saveInMemory(_displayText);
      operator();
    } else if (command == '.' && isDouble()) {
      return;
    } else if (command != '<-' &&
        command != '=' &&
        !operations.contains(command)) {
      digits(command);
    }
  }

  allClear() {
    _displayText = '0';
    _numbers = [];
  }

  clearMemory() {
    _numbers = [];
    _operator = '';
  }

  isDouble() {
    return _displayText.contains('.') ? true : false;
  }

  bool displayTextIsNull() {
    return _displayText.length == 1 ? true : false;
  }

  backSpace() {
    (displayTextIsNull())
        ? _displayText = '0'
        : _displayText =
            _displayText.replaceRange(_displayText.length - 1, null, '');
  }

  saveInMemory(String value, [String command = '']) {
    _numbers.add(double.parse(value));
    command == '' ? null : _operator = command;
    clear = true;
  }

  operator() {
    switch (_operator) {
      case '+':
        _displayText = '${_numbers[0] + _numbers[1]}';
        break;
      case '-':
        _displayText = '${_numbers[0] - _numbers[1]}';
        break;
      case '*':
        _displayText = '${_numbers[0] * _numbers[1]}';
        break;
      case '/':
        _displayText = '${_numbers[0] / _numbers[1]}';
        break;
      case '%':
        _displayText = '${_numbers[0] % _numbers[1]}';
        break;
    }
    clearMemory();
  }

  digits(String command) {
    (_displayText == '0' && command != '.') ? _displayText = '' : null;
    (clear) ? {_displayText = '', clear = false} : null;
    _displayText += command;
  }
}
