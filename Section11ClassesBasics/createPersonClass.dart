class Person {
  const Person({
    required this.name,
    required this.age,
    required this.height,
  });
  final String name;
  final int age;
  final double height;

  void printDescription() {
    print('My Name is $name. I\'m $age years old, I\'m $height meters tall');
  }
}

void main() {
  final person1 = Person(name: 'Apache', age: 11, height: 2.34);
  final listOfPersons = [
    Person(name: 'Apache', age: 11, height: 2.34),
    Person(name: 'Polo', age: 12, height: 2.54)
  ];
  person1.printDescription();
}
