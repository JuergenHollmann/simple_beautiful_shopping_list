import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/list_entry.dart';

class SeparatedListViewListContent extends StatelessWidget {
  const SeparatedListViewListContent({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: itemBuilder,
        separatorBuilder: separatorBuilder,
        itemCount: products.length);
  }

  Widget itemBuilder(BuildContext context, int index) {
    Product product = products[index];
    return ListEntry(product: product);
  }

  Widget separatorBuilder(BuildContext context, int index) {
    return const SizedBox(height: 16); // geht auch mit "Container(height: 16);"
  }

// Das wäre (in verkürzter Schreibweise) auch gegangen:
  //   return ListView.separated(
  //       itemBuilder: (BuildContext context, int index) {
  //         Product product = products[index];
  //         return ListEntry(product: product);
  //       },
  //       separatorBuilder: (BuildContext context, int index) {
  //         return const SizedBox(height: 16); // geht auch mit "Container(height: 16);"
  //       },
  //       itemCount: products.length);
  // }
}
