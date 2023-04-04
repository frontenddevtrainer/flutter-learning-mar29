class CartItem {
  final String name;
  final String id;
  CartItem({required this.name, required this.id});
}

// Model
class Cart {
  final List<CartItem> items = [];
}
