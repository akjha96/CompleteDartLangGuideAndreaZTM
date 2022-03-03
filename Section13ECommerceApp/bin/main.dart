import 'dart:io';

import 'package:test/allProducts.dart';
import 'package:test/cart.dart';
import 'package:test/product.dart';

void main() {
  final cart = Cart();
  while (true) {
    stdout.write(
        'What do you want to do?\n(v)iew Items\n(a)dd Items\n(c)heckout\n');
    final line = stdin.readLineSync();
    if (line == 'a') {
      final product = chooseProduct();
      if (product != null) {
        cart.addProduct(product);
        print(cart);
      }
    } else if (line == 'v') {
      print(cart);
    } else if (line == 'c') {
      if (checkout(cart)) {
        break;
      }
    }
  }
}

// Choose Product from list of products
Product? chooseProduct() {
  final productsList = allProducts
      .map((product) => product.displayProductNameAndPrice)
      .join('\n');
  stdout.write('Available products:\n$productsList\nYour choice: ');
  final selection = stdin.readLineSync()?.toLowerCase();

  for (var product in allProducts) {
    if (product.initial == selection) {
      return product;
    }
  }
  print('Not Found!');
  return null;
}

// At the Checkout, check cash paid & return extra
bool checkout(Cart cart) {
  if (cart.isEmpty) {
    print('Cart is Empty!');
    return false;
  }
  final total = cart.total();
  print('Total: \$$total');
  stdout.write('Payment in Cash: \n\$');
  final line = stdin.readLineSync();
  if (line == null || line.isEmpty) {
    return false;
  }
  final paid = double.tryParse(line);
  if (paid == null) {
    return false;
  }
  if (paid >= total) {
    final change = paid - total;
    print('Change: \$${change.toStringAsFixed(2)}');
    return true;
  } else {
    print('Not enough Cash!');
    return false;
  }
}
