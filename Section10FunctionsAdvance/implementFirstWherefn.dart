void main() {
  const list = [1, 2, 3, 4];
  final itemFound = firstWhereFn(list, (value) => value == 5, orElse: () => -1);
  print(itemFound);
}

T firstWhereFn<T>(List<T> list, bool Function(T) fn,
    {required T Function() orElse}) {
  for (var item in list) {
    if (fn(item)) {
      return item;
    }
  }
  return orElse();
}
