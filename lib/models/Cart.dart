class CartItem {
  final String name;
  final String id;
  final int quantity;
  CartItem({required this.name, required this.id, required this.quantity});
}

// Model
class Cart {
  final List<CartItem> items = [];
}
