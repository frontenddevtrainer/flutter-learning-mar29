import 'package:edu_ecommerce/widgets/EduAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreen();
}

class _CheckoutScreen extends State<CheckoutScreen> {
  final usernameController = TextEditingController();

  // Username
  // Email,
  // Address,
  // Phone

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EduAppBar(title: "Checkout"),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
            child: Column(
          children: [
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: "Username"),
              // validator: (value) {
              //   if (value. && value?.isEmpty) {
              //     return "Username is required.";
              //   }
              //   return null;
              // },
            )
          ],
        )),
      ),
    );
  }
}
