import 'dart:io';

void main() {
  while (true) {
    displayMenu();
    var orderProcessed = customerOrder();
    if (orderProcessed == -1) {
      print("Invalid Order! \nDo you want to try again? Yes/ No");
      var tryAgain = stdin.readLineSync();
      print('');
      if (tryAgain == null) {
        print("Thanks for visiting! See you again soon... GoodBye!\n");
        break;
      } else if (tryAgain.toLowerCase() == 'yes') {
        continue;
      } else if (tryAgain.toLowerCase() == 'no') {
        print("Thanks for visiting! See you again soon!\n");
        break;
      } else {
        print("Thanks for visiting! See you again soon... GoodBye!\n");
        break;
      }
    } else {
      displayTotalCost(orderProcessed);
      break;
    }
  }
}

Map<String, double> menu() {
  const pizzaMenu = {
    'macroni': 2.55,
    'peproni': 4.52,
    'cheeze': 3.66,
  };
  return pizzaMenu;
}

void displayMenu() {
  final pizzaMenu = menu();
  for (var key in pizzaMenu.keys) {
    print('${key}: ${pizzaMenu[key]}');
  }
}

double customerOrder() {
  print("What do you desire?");
  final customerOrder = stdin.readLineSync();
  double orderProcessed = processOrder(customerOrder);
  return orderProcessed;
}

double processOrder(String? customerOrder) {
  final pizzaMenu = menu();
  if (customerOrder != null && customerOrder.length != 0) {
    final orderedItems = customerOrder.split(',');
    for (String orderedItem in orderedItems) {
      if (!pizzaMenu.keys.contains(orderedItem.trim().toLowerCase())) {
        print('$orderedItem pizza is not in the menu!');
        return -1;
      }
      double totalCost = totalOrderCost(orderedItems);
      return totalCost;
    }
  }
  return -1;
}

double totalOrderCost(List<String> orderedItems) {
  final pizzaMenu = menu();
  double totalCost = 0.0;
  for (var orderedItem in orderedItems) {
    orderedItem = orderedItem.trim().toLowerCase();
    totalCost += pizzaMenu[orderedItem] as double;
  }
  return totalCost;
}

void displayTotalCost(double totalCost) {
  print('Your total cost is \$${totalCost.toStringAsFixed(2)}\n');
}
