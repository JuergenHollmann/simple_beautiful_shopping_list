// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/list_content/builder_list_view_list_content.dart';
import 'package:simple_beautiful_shopping_list/presentation/list_content/column_list_content.dart';
import 'package:simple_beautiful_shopping_list/presentation/list_content/separated_list_view_list_content.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Simple Beautiful Shopping List",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SeparatedListViewListContent(products: products),
        // child: BuilderListViewListContent(products: products),
        // child: ColumnListContent(products: products),
      ),
    );
  }
}
