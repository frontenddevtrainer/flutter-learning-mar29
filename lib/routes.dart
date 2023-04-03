import "package:edu_ecommerce/widgets/employee/EmployeeScreen.dart";
import 'package:flutter/material.dart';
import "widgets/CartScreen.dart";
import "widgets/HomeScreen.dart";

final Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => HomeScreen(),
  "/cart": (BuildContext context) => CartScreen(),
  "/settings": (BuildContext context) => const Text("Hello world!!!"),
  "/employee": (BuildContext context) => EmployeeScreen()
};
