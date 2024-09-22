import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/main_screen.dart';

void main() {
  final List<Product> products = [
    Product("Tomate", 19.99),
    Product("Apfel", 7.99),
    Product("Wassermelone", 34.99),
    Product("Wassermelone MHD", 14.99),
    Product("Tee", 12.99),
    Product("Tee kleine Packung", 0.99),
    Product("Lego", 649.99),
    Product("Lego basic", 149.99),
    Product("Minibagger", 1149.99),
  ];

  runApp(MainApp(products: products));
}

// Das hier ist eine Ausnahme. Die erste Klasse darf mit in der main.dart sein.
class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Beautiful Shopping App',
      debugShowCheckedModeBanner: false,
      home: MainScreen(products: products),
    );
  }
}
