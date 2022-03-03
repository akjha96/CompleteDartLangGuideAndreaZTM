class Breathing {
  void breathing() => print('Breathing');
}

mixin Swimming {
  void swimming() => print('Swimming');
}

class Animal with Breathing {}

class Plant with Breathing {}

class Fish extends Animal with Swimming {}

class Human extends Animal with Swimming {}

void main() {
  final breathing = Breathing();
  // final swimming = Swimming(); //Mixins cannot be instantiated Mixins are verbs .. class is for Noun
  final animal = Animal();
  animal.breathing();
  final fish = Fish();
  fish.swimming();
}
