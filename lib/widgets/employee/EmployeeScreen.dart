import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "package:edu_ecommerce/viewmodels/Employee.dart";

import '../EduAppBar.dart';

class EmployeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<EmployeeVM>(builder: (context, value, child) {
        return Scaffold(
          appBar: const EduAppBar(title: "Homepage"),
          body: Text('This is user ${value.name}'));
    });
  }
}
