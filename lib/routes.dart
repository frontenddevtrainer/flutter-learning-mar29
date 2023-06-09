import "package:edu_ecommerce/widgets/checkout/CheckoutScreen.dart";
import "package:edu_ecommerce/widgets/employee/EmployeeScreen.dart";
import 'package:flutter/material.dart';
import "widgets/cart/CartScreen.dart";
import "widgets/HomeScreen.dart";

final Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => HomeScreen(),
  "/cart": (BuildContext context) => CartScreen(),
  "/settings": (BuildContext context) => const Text("Hello world!!!"),
  "/employee": (BuildContext context) => EmployeeScreen(),
  "/checkout": (BuildContext context) => const CheckoutScreen()
};
