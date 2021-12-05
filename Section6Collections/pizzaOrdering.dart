void main() {
  const pizzaMenu = {
    'macroni': 2.55,
    'peproni': 4.52,
    'cheeze': 3.66,
  };
  const customerOrder = ['cheeze', 'sweetNuts', 'peproni'];
  double totalCost = 0;
  for (var customerOrderItem in customerOrder) {
    if (pizzaMenu[customerOrderItem] == null) {
      print('$customerOrderItem pizza is not in the menu!');
    } else {
      totalCost += pizzaMenu[customerOrderItem] as double;
    }
  }
  print('Total: \$$totalCost');
}
