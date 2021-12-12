void main() {
  const list = [1, 2, 3, 4];
  final even = list.where((value) => value % 2 == 0);
  print(even);
  final findFirstEven =
      list.firstWhere((element) => element % 5 == 0, orElse: () => -1);
  print(findFirstEven);
}
