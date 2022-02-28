class Animal {
  const Animal({required this.age});
  final int age;
  void sleep() => print('Sleep');
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age);
  void bark() => print('Bark');
  @override
  void sleep() {
    super.sleep();
    print('Sleep some more!');
  }
}

class Cow extends Animal {
  Cow({required int age}) : super(age: age);
  void moo() => print('Moo');
}

class CleverDog extends Dog {
  CleverDog({required int age}) : super(age: age);
  void catchBall() => print('Catch Ball');
}

void main() {
  final animal = Animal(age: 2);
  // animal.sleep();
  final dog = Dog(age: 1);
  // dog.bark();
  dog.sleep();
  // final cow = Cow(age: 4);
  // cow.moo();
  // cow.sleep();
  // final cleverDog = CleverDog(age: 3);
  // cleverDog.catchBall();
  // cleverDog.sleep();
}
