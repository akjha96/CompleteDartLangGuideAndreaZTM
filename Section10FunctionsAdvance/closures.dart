void main() {
  const multiplier = 10;
  const list = [1, 2, 3];
  final result = list.map((x) => x * multiplier);
  print(result);
}
//This annonymous func inside map is called closure as it uses variable outside its own scope 