import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/intro.dart';
import 'package:shop_app/model/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        home: IntroPage(),
      ),
    );
  }
}
