import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;

  // ignore: prefer_typing_uninitialized_variables
  final color;
  final void Function()? onPressed;
  const GroceryItemTile({
    super.key,
    required this.color,
    required this.imagePath,
    required this.itemName,
    required this.itemPrice,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: color[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(
              imagePath,
              height: 64,
            ),
            //item name
            Text(itemName),

            //item price and button

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                onPressed: onPressed,
                color: color[800],
                //padding: EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price: \$$itemPrice',
                      style: const TextStyle(color: Colors.white),
                    ),
                    IconButton(
                      onPressed: onPressed, 
                      icon: const Icon(Icons.shopping_cart),
                      
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
