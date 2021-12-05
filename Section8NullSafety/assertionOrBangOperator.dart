void main() {
  int x = 0;
  int? maybeValue;
  if (x > 0) {
    maybeValue = 33;
  }
  int value = maybeValue!;
  print(value);
}
