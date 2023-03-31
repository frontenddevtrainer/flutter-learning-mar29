import 'package:edu_ecommerce/models/Product.dart';
import 'package:flutter/material.dart';

import 'EduAppBar.dart';
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
      appBar: const EduAppBar(title: "Homepage"),
      body: ProductList(
        products: products,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Text("hello world!!!"),
            ),
            ListTile(
              title: const Text("Products"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Cart"),
              onTap: () { Navigator.pushNamed(context, "/cart"); },
            ),
            ListTile(
              title: const Text("Setting"),
              onTap: () {},
            )
          ],
        ),
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
