import 'package:edu_ecommerce/widgets/EduAppDrawer.dart';
import 'package:flutter/material.dart';

import 'EduAppBar.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EduAppBar(title: "Cart"),
      body: const Text("Cart"),
      drawer: EduAppDrawer(),
    );
  }
}
