void main() {
  List<double> numList = [1.125, 2, 2.333, 4, 5, 6, 7];
  final result = sum(numList);
  print(result);
}

String sum(List<double> numList) {
  double total = 0;
  if (numList.isEmpty) {
    return "Given list is empty";
  }
  for (var number in numList) {
    total += number;
  }

  return total.toString();
}
