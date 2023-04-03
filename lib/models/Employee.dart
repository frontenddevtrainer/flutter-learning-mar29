class Employee {
  final String name;
  final String id;
  final String address;
  final String dept;
  final String phone;

  Employee({required this.name, required this.id, this.address = "", required this.dept, this.phone = "",});
}
