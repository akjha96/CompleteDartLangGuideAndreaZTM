Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

Future<int> sumStream2(Stream<int> stream) =>
    stream.reduce((previous, element) => previous + element);

Future<void> main() async {
  final stream = Stream<int>.fromIterable([1, 2, 3, 4]);
  final sum = await sumStream2(stream);
  print('Sum: $sum');
}
