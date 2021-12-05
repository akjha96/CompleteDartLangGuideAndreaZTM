void main() {
  final list = [1, 2, 3];
  final copy = list; // only reference is copied
  copy[0] = 0;
  final copy2 = [...list]; // actual list elements are copied
  copy2[2] = 8;
  print('list: $list\ncopy: $copy\ncopy2: $copy2');
}
