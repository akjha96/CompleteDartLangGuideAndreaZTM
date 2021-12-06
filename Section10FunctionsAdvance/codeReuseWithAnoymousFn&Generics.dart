void main() {
  const list = [1, 2, 3];
  const list2 = [2.3, 4.7, 1.9, 8.0, 6.6];
  list.forEach(print);
  var doubleList = doubles(list);
  print('doubles: \n$doubleList');
  final rounded = transform<double, String>(
      list2, (value) => value.round().toStringAsFixed(2));
  print('Rounded: \n$rounded');
}

List<R> transform<T, R>(List<T> items, R Function(T) modify) {
  var result = <R>[];
  for (var item in items) {
    result.add(modify(item));
  }
  return result;
}

List<int> doubles(List<int> items) {
  var result = <int>[];
  for (var item in items) {
    result.add(item * 2);
  }
  return result;
}
