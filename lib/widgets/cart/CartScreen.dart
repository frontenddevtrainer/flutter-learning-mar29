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

              return Dismissible(
                  background: Container(color: Colors.green),
                  secondaryBackground: Container(
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.delete),
                        )
                      ],
                    ),
                  ),
                  onDismissed: (direction) {
                    value.removeFromCart(product);
                  },
                  key: Key(index.toString()),
                  child: ListTile(
                    title: Text(product.name),
                  ));
            },
          ),
        );
      },
    );
  }
}
