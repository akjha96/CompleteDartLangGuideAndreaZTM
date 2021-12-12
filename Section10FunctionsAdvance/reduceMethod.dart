void main() {
  const list = [1, 3, 5, 6];
  if (list.length != 0) {
    final output = list.reduce((value, element) => value + element);
    print(output);
  } else {
    print('Empty list!');
  }
}
