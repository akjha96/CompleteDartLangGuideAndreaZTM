void main() {
  const list = [1, 2, 3];
  list.forEach((x) => print(x));
  list.forEach(print);
  for (var num in list) {
    print(num);
  }
}
