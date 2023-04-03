import 'package:edu_ecommerce/models/Employee.dart';
import 'package:flutter/material.dart';

class EmployeeVM with ChangeNotifier{
  Employee employee;

  EmployeeVM({ required this.employee });


  String get name => employee.name;

  String get id => employee.id;

  String get address => employee.address;

  String get dept => employee.dept;

  String get phone => employee.phone;

}
