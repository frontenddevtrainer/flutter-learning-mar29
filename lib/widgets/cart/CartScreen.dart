import 'package:edu_ecommerce/viewmodels/Cart.dart';
import 'package:edu_ecommerce/widgets/EduAppBar.dart';
import 'package:edu_ecommerce/widgets/EduAppDrawer.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartVM>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: const EduAppBar(title: "Cart"),
          drawer: EduAppDrawer(),
          body: ListView.builder(
            itemCount: value.getCartItems().length,
            itemBuilder: (context, index) {
              final cartItem = value.getCartItems();
              final product = cartItem[index];

              return ListTile(
                title: Text(product.name),
              );
            },
          ),
        );
      },
    );
  }
}
