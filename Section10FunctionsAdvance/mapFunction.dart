void main() {
  const list = [1, 2, 3];
  var double = list.map((value) => value * 2);
  print(double);
  final List<int> triple = list.map((value) => value * 3).toList();
  print(triple);
}
