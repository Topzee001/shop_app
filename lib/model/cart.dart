import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list on grocery item to be sold
  final List _shopItems = [
    ["Avocado", "2.20", "images/avocado1.png", Colors.green],
    ["Banana", "5.00", "images/banana1.png", Colors.yellow],
    ["Chicken", "15.30", "images/chicken3.png", Colors.brown],
    ["Water", "1.00", "images/water2.png", Colors.blue],
    ["Cake", "10.00", "images/cake.png", Colors.pink],
    ["Donut", "4.20", "images/donut.png", Colors.purple],
  ];

  //list of items in cart
  final List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add item to the cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item to the cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //total price

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    //return total price in 2dp
    return totalPrice.toStringAsFixed(2);
  }
}
