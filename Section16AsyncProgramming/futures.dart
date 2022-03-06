Future<String> fetchUserOrder() => Future.delayed(
      Duration(seconds: 2),
      () => 'Cappuccino',
    );

// void main() {
//   print("Program Started");
//   fetchUserOrder()
//       .then((order) => print('Order is ready: $order'))
//       .catchError((error) => print(error))
//       .whenComplete(() => print('Done'));
// }

//Future using async await
Future<void> main() async {
  print('Program Started');
  try {
    final order = await fetchUserOrder();
    print(order);
    final order2 = await fetchUserOrder();
    print(order2);
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
