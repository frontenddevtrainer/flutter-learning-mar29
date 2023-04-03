import 'package:edu_ecommerce/models/Employee.dart';
import 'package:edu_ecommerce/services/employee.dart';
import 'package:flutter/material.dart';

// ViewModel
class EmployeeVM with ChangeNotifier{
  
  late Employee employee;
  bool isLoading = false;
  
  
  final EmployeeService employeeService = EmployeeService();

  String get name => employee.name;

  String get id => employee.id;

  String get address => employee.address;

  String get dept => employee.dept;

  String get phone => employee.phone;

  Future<void> getEmployee() async {
    isLoading = true;
    notifyListeners();

    employee = await employeeService.getEmployee();
    isLoading = false;
    notifyListeners();
  }

}
