import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;

  void printValues() {
    print('Area is $area');
    print('Perimeter is $perimeter');
  }
}

class Square extends Shape {
  Square(this.side);
  final double side;
  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;
  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void main() {
  // final shape = Shape(); cannot instantiate abstract classes
  // final Shape square = Square(2);
  // printValues(square);
  // final Shape circle = Circle(1);
  // printValues(circle);
  final shapes = [Square(3), Circle(4)];
  for (var shape in shapes) {
    shape.printValues();
  }
}
