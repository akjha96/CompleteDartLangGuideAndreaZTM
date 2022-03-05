class PositiveInt {
  const PositiveInt(this.value)
      : assert(value >= 0, 'Value cannot be negetive');
  final int value;
}

void main() {
  // const invalidAge = PositiveInt(-10);
  // print(invalidAge);
}
