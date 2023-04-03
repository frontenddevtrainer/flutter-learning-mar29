import 'package:flutter/material.dart';

import '../EduAppBar.dart';
import 'EmployeeDetail.dart';

class EmployeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
          appBar: EduAppBar(title: "Homepage"), body: EmployeeDetail());
  }
}





         