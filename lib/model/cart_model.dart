import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // List of items on sale
  final List _shopItems = [
    [
      "Asics",
      "4.00",
      "lib/images/asics.png",
      Colors.green,
    ],
    [
      "Adidas",
      "3.00",
      "lib/images/adidas.png",
      Colors.blue,
    ],
    [
      "Reebok",
      "5.00",
      "lib/images/reebok.png",
      Colors.red,
    ],
    [
      "Nike",
      "5.00",
      "lib/images/nike.png",
      Colors.yellow,
    ],
  ];

// List of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // add item to cart
  void addItemToCart(int index) {
    //
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // Remove item from cart
  void removeItemFromCart(int index) {
    //
    _cartItems.remove(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    //
    double totalPrice = 0;

    for (int i = 0; i < _cartItems.length; i++) {
      //
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
