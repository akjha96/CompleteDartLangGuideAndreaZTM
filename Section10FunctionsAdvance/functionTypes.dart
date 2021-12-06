typedef Greet = String Function(String);
// typedef String Greet(String name);

String sayHi(String name) => 'Hi $name';
String sayHola(String name) => 'Hola $name';
String sayBonjour(String name) => 'Bonjour $name';

void main() {
  final sayHi = (name) => 'Hi $name';
  welcome(sayBonjour, 'Bunny');
}

void welcome(Greet greet, String name) {
  print(greet(name));
  print('Welcome to the cult');
}
