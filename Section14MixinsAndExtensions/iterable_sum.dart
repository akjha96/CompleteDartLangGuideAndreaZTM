extension IterableX<T extends num> on Iterable<T> {
  T sum() => reduce(((value, element) => (value + element) as T));
}

void main() {
  int sum1 = [1, 2, 3].sum();
  double sum2 = [1.0, 2.0, 3.0].sum();
  print(sum1);
  print(sum2);
}
