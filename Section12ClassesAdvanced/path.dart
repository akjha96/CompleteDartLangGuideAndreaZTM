import 'dart:math';

class ClosedPath2 {
  const ClosedPath2(this.points);
  final List<Point> points;
}

class ClosedPath {
  List<Point> _points = [];

  void moveTo(Point point) {
    _points = [point];
  }

  void lineTo(Point point) {
    _points.add(point);
  }
}

void main() {
  // final path = ClosedPath();
  // // square path
  // path.moveTo(Point(0, 0));
  // path.lineTo(Point(2, 0));
  // path.lineTo(Point(2, 2));
  // path.lineTo(Point(0, 2));
  // path.lineTo(Point(0, 0));

//cascade operator
  final path = ClosedPath()
    ..moveTo(Point(0, 0))
    ..lineTo(Point(2, 0))
    ..lineTo(Point(2, 2))
    ..lineTo(Point(0, 2))
    ..lineTo(Point(0, 0));

  //   //null aware operator
  // final path = ClosedPath()
  //   ?..moveTo(Point(0, 0))
  //   ?..lineTo(Point(2, 0))
  //   ?..lineTo(Point(2, 2))
  //   ?..lineTo(Point(0, 2))
  //   ?..lineTo(Point(0, 0));
}
