class Strings {
  static const welcome = 'welcome';
  static const sayHi = 'Hi';
  static String greet(String name) => '$sayHi $name';

  void foo() {
    print('$welcome Dart!!!');
  }
}

void main() {
  print(Strings.sayHi);
  print(Strings.welcome);
  print(Strings.greet('Auzo'));
}
