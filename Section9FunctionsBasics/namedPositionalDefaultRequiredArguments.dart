void main() {
  final person = describe(name: 'Auzo', age: 33);
  print(person);
  final discussResult = discuss(1);
  print(discussResult);
}

String describe({required String name, required int age}) {
  return 'My name is $name. I am $age years old.';
}

String discuss(int a, [int? b]) {
  // default positional argument
  return "a: $a, b: $b";
}
