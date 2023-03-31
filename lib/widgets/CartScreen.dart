import 'package:flutter/material.dart';

import 'EduAppBar.dart';


class CartScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: EduAppBar(title: "Cart"),
      body: Text("Cart")
    );
  }
}
