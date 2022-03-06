Future<void> countdown(int n) async {
  if (n >= 0) {
    for (int i = n; i >= 0; i--) {
      await Future.delayed(
        Duration(seconds: 1),
        () => print(i),
      );
    }
  } else {
    throw Exception('No negetive numbers allowed');
  }
}

Future<void> main() async {
  try {
    await countdown(5);
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
