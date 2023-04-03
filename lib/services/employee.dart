import 'dart:convert';

import 'package:edu_ecommerce/models/Employee.dart';
import 'package:dio/dio.dart';

class EmployeeService {
  final Dio _dio = Dio();

  Future<Employee> getEmployee() async {
    final response =
        await _dio.get("https://jsonplaceholder.typicode.com/users/1");
    if (response.statusCode == 200) {
      return Employee(
          name: response.data["name"], id: response.data["id"].toString(), dept: "tech");
    } else {
      throw Exception("Employee request failed");
    }
  }
}
