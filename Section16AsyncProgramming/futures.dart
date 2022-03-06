Future<String> fetchUserOrder() => Future.delayed(
      Duration(seconds: 2),
      () => 'Cappuccino',
    );

Future<String> fetchUserOrder2() => Future.value('Espresso');

Future<String> fetchUserOrder3() => Future.error(Exception('Out of Milk'));

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
    final order2 = await fetchUserOrder2();
    print(order2);
    final order3 = await fetchUserOrder3();
    print(order3);
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
