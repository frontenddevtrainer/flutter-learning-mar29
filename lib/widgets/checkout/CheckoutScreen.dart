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
  final formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final emailController = TextEditingController();

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
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(labelText: "Username"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Username is required.";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: "Email"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required.";
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print("submitted");
                      }
                    },
                    child: const Text("Submit"))
              ],
            )),
      ),
    );
  }
}
