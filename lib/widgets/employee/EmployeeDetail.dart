import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "package:edu_ecommerce/viewmodels/Employee.dart";


// View
class EmployeeDetail extends StatefulWidget {
  const EmployeeDetail({Key? key}) : super(key: key);

  @override
  State<EmployeeDetail> createState() => _EmployeeDetail();
}

class _EmployeeDetail extends State<EmployeeDetail> {
  @override
  void initState() {
    super.initState();
    Provider.of<EmployeeVM>(context, listen: false).getEmployee();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<EmployeeVM>(builder: (context, value, child) {
      if (value.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      return Text(value.name.toString());
    });
  }
}
