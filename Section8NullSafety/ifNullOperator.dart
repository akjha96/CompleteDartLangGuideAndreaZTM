void main() {
  int x = 5;
  int? maybeValue;
  if (x > 4) {
    maybeValue = 2;
  }
  maybeValue ??= 99;
  print(maybeValue);
}
