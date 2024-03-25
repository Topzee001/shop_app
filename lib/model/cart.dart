import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list on grocery item to be sold
  final List _shopItems = [
    ["Avocado", "2.20", "images/avocado1.png", Colors.green],
    ["Banana", "5.00", "images/banana1.png", Colors.yellow],
    ["Chicken", "15.3", "images/chicken3.png", Colors.brown],
    ["Water", "1.00", "images/water2.png", Colors.blue],
  ];

  get shopItems => _shopItems;
}
