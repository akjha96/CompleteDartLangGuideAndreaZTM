void main() {
  const list = [1, 2, 3, 4];
  final modifiedList = whereFn<int>(list, (item) => item % 2 == 0);
  print(modifiedList);
}

List<T> whereFn<T>(List<T> list, bool Function(T) fn) {
  var modifiedList = <T>[];

  for (var listItem in list) {
    if (fn(listItem)) {
      modifiedList.add(listItem);
    }
  }
  return modifiedList;
}
