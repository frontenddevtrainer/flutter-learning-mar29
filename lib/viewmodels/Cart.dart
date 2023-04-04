import 'package:flutter/material.dart';

import '../models/Cart.dart';

class CartVM with ChangeNotifier {
  Cart cart = Cart();

  addToCart({name, id, quantity}) {
    cart.items.add(CartItem(name: name, id: id, quantity: quantity));
    print(cart);
    notifyListeners();
  }

  removeFromCart(item) {
    cart.items.remove(item);
  }
}
