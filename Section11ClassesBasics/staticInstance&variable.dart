class Strings {
  static const welcome = 'welcome';
  static const sayHi = 'Hi';
  static String greet(String name) => '$sayHi $name';

  void foo() {
    print('$welcome Dart!!!');
  }
}

void main() {
  final s = Strings();
  // print(s.welcome); // This will not work cause static variables/ methods can
  // only be accessed by class itself and not by any of its instances
  print(Strings.sayHi);
  print(Strings.welcome);
  print(Strings.greet('Auzo'));
}
