void main() {
  final sayHi = (name) => 'Hi $name';
  welcome(sayHi, 'Bunny');
}

void welcome(String Function(String) greet, String name) {
  print(greet(name));
  print('Welcome to the cult');
}
