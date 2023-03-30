import "package:flutter/material.dart";

import "../models/Product.dart";

class ProductListItem extends StatelessWidget {
  final Product product;

  ProductListItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(product.price.toStringAsFixed(2)),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Buy now"))
                  ]),
            ),
          ]),
    );
  }
}
