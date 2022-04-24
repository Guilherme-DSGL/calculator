class Brain {
  List<String> operations = ['+', '-', '*', '/', '%'];
  String _displayText = '';
  String _operator = '';
  List<double> _numbers = [];

  String get displayText {
    return _displayText;
  }

  set displayText(String command) {
    if (command == 'AC') {
      allClear();
    } else if (command == '<-') {
      backSpace();
    } else if (operations.contains(command)) {
      saveInMemory(_displayText, command);
    } else if (command == '=') {
      saveInMemory(_displayText);
      operator();
    } else if (command == '.' && (displayTextIsNull() || isDouble())) {
      return;
    } else if (command != '<-') {
      _displayText += command;
    }
  }

  allClear() {
    _displayText = '';
    _numbers = [];
  }

  clearNumbers() {
    _numbers = [];
  }

  isDouble() {
    return _displayText.contains('.') ? true : false;
  }

  bool displayTextIsNull() {
    return _displayText == '' ? true : false;
  }

  backSpace() {
    (displayTextIsNull())
        ? null
        : _displayText =
            _displayText.replaceRange(_displayText.length - 1, null, '');
  }

  saveInMemory(String value, [String command = '']) {
    (displayTextIsNull()) ? null : _numbers.add(double.parse(value));
    command == '' ? null : _operator = command;
    operations.contains(command) ? _displayText = '' : null;
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
    clearNumbers();
  }
}
