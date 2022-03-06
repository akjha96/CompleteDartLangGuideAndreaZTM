void main() {
  Stream.fromIterable([1, 2, 3, 4]);
  Stream.value(10);
  Stream.error(UnsupportedError('Error not Handled'));
  Stream.fromFuture((Future.delayed(Duration(seconds: 1), () => 42)));
  Stream.periodic(Duration(seconds: 1), (index) => index);
}
