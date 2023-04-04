import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "../models/Product.dart";
import "../viewmodels/Cart.dart";

class ProductListItem extends StatefulWidget {
  final Product product;

  ProductListItem({required this.product, Key? key}) : super(key: key);

  @override
  _ProductListItemState createState() => _ProductListItemState();
}

class _ProductListItemState extends State<ProductListItem> {
  int counter = 0;

  void _increaseQuantity() {
    setState(() {
      counter++;
    });

    Provider.of<CartVM>(context, listen: false).addToCart(
        id: widget.product.id, name: widget.product.name);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> stackChildren = [
      ElevatedButton(
          onPressed: _increaseQuantity, child: const Text("Select Quantity")),
    ];

    if (counter > 0) {
      stackChildren.add(Positioned(
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 34, 255),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Text(counter.toString()),
          )));
    }

    return Card(child: Consumer<CartVM>(
      builder: (context, value, child) {
        return Row(
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
                        widget.product.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(widget.product.price.toStringAsFixed(2)),
                      Stack(
                        children: stackChildren,
                      )
                    ]),
              ),
            ]);
      },
    ));
  }
}
