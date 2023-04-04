import 'package:flutter/material.dart';

class EduAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const EduAppBar({required this.title}) : super();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.deepPurple,
      // centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/cart");
            },
            icon: const Icon(Icons.shopping_bag_sharp)),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/checkout");
            },
            icon: const Icon(Icons.person))
      ],
      leading: Builder(
        builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu));
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
