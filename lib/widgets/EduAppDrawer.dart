import 'package:flutter/material.dart';

class EduAppDrawer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Text("hello world!!!"),
            ),
            ListTile(
              title: const Text("Products"),
              onTap: () { Navigator.pushNamed(context, "/"); },
            ),
            ListTile(
              title: const Text("Cart"),
              onTap: () { Navigator.pushNamed(context, "/cart"); },
            ),
            ListTile(
              title: const Text("Setting"),
              onTap: () { Navigator.pushNamed(context, "/settings"); },
            ),
            ListTile(
              title: const Text("Employee"),
              onTap: () { Navigator.pushNamed(context, "/employee"); },
            )
          ],
        ),
      );
}}