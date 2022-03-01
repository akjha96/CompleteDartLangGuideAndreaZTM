import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;
  const Shape();

  factory Shape.fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError('Invalid or missing side property');
      case 'circle':
        final side = json['side'];
        if (side is double) {
          return Circle(side);
        }
        throw UnsupportedError('Invalid or missing side property');
      default:
        throw UnimplementedError('Shape $type not recognised!');
    }
  }
}

class Square extends Shape {
  const Square(this.side);
  final double side;
  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  const Circle(this.radius);
  final double radius;
  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void printValues(Shape shape) {
  print('Area is ${shape.area}');
  print('Perimeter is ${shape.perimeter}');
}

void main() {
  // final shape = Shape(); cannot instantiate abstract classes
  // final Shape square = Square(2);
  // printValues(square);
  // final Shape circle = Circle(1);
  // printValues(circle);
  // final shapes = [Square(3), Circle(4)];
  // for (var shape in shapes) {
  //   shape.printValues();
  // }

  // Factory constructor
  final shapesJson = [
    {"type": "square", "side": 5},
    {"type": "circle", "side": 21}
  ];
  final shapes = shapesJson.map((shapeJson) => Shape.fromJson(shapeJson));
  shapes.forEach(printValues);
}
