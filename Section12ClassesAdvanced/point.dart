import 'package:equatable/equatable.dart';

class Point extends Equatable {
  Point(this.x, this.y);
  int x;
  int y;

  @override
  List<Object?> get props => [x, y];

  @override
  bool? get stringify => true;

  // @override
  // String toString() => 'Point($x, $y)';

  // @override
  // // TODO: implement hashCode
  // int get hashCode => super.hashCode; // replaced by equatable

  // @override
  // // ignore: hash_and_equals
  // bool operator ==(covariant Point other) {
  //   if (x == other.x && y == other.y) return true;
  //   return false;
  // } // replaced by Equatable

  Point operator +(covariant Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int other) {
    return Point(x * other, y * other);
  }
}

void main() {
  print(Point(1, 2) == Point(1, 2));
  print(Point(3, 4));
  // print(Point(1, 1));
  // const list = [Point(1, 2), Point(3, 4)];
  // print(list);
  print(Point(1, 2) + Point(1, 17));
  print(Point(1, 2) * 5);
}
