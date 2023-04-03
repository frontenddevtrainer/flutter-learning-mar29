import 'package:edu_ecommerce/models/Employee.dart';
import 'package:edu_ecommerce/services/employee.dart';
import 'package:flutter/material.dart';

class EmployeeVM with ChangeNotifier{
  
  late Employee employee;
  
  final EmployeeService employeeService = EmployeeService();

  String get name => employee.name;

  String get id => employee.id;

  String get address => employee.address;

  String get dept => employee.dept;

  String get phone => employee.phone;

  Future<void> getEmployee() async {
    employee = await employeeService.getEmployee();
    notifyListeners();
  }

}
