import 'package:edu_ecommerce/models/Product.dart';
import 'package:flutter/material.dart';

import 'ProductList.dart';

class HomeScreen extends StatelessWidget {
  
  final List<Product> products = [
    Product(name: "Laptop", price: 100000.00),
    Product(name: "iPhone", price: 70000.00),
    Product(name: "iPad", price: 80000.00),
    Product(name: "Macbook pro", price: 80000.00)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edureka Ecommerce"),
        backgroundColor: Colors.deepPurple,
        // centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_bag_sharp)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person))
        ],
        leading: const Icon(Icons.menu),
      ),
      body: ProductList(
        products: products,
      ),

      // Example: Container
      // body: Container(
      //   margin: const EdgeInsets.only(left: 10, top: 10),
      //   padding: const EdgeInsets.all(10),
      //   width: 100,
      //   height: 500,
      //   // color: Colors.amber,
      //   child: const Text("hello world!!!"),
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(10),
      //       border: Border.all(color: Colors.black)),
      //       // color: Colors.amber,
      // ),
      // Example: Padding
      // body: const Padding(padding: EdgeInsets.all(10), child: Text("Hello World")),
      // Example: Row
      // body: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      //   Container(
      //     width: 100,
      //     height: 100,
      //     color: Colors.amber,
      //   ),
      // ]),
      // Example Column
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: const [Text("Product Name"), Text("Product Description")],
      // ),
    );
  }
}
