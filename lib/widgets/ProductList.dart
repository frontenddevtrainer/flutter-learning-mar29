import "package:flutter/material.dart";

import "../models/Product.dart";
import "ProductListItem.dart";

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({required this.products});

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   crossAxisCount: 2,
    //   children: products.map((product) => Text(product.name)).toList(),
    // );

    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductListItem(product: product);
        });
  }
}


// ["hello world"]
// map
// [Text("hello world")]