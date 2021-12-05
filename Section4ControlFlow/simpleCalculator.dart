enum Operation {
  plus,
  minus,
  multiply,
  divide,
}

void main() {
  const a = 10;
  const b = 2;
  Operation op = Operation.plus;
  if (a.runtimeType == int && b.runtimeType == int) {
    switch (op) {
      case Operation.plus:
        print('$a added with $b is ${a + b}');
        break;
      case Operation.minus:
        print('$a minus $b is ${a - b}');
        break;
      case Operation.multiply:
        print('$a multiplied by $b is ${a * b}');
        break;
      case Operation.divide:
        print('$a divided by $b is ${a / b}');
        break;
      default:
        print('Invalid input');
        break;
    }
  } else {
    print('Invalid input');
  }
}
