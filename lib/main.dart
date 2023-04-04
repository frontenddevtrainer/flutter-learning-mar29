import "package:edu_ecommerce/models/Employee.dart";
import "package:edu_ecommerce/routes.dart";
import "package:edu_ecommerce/viewmodels/Cart.dart";
import "package:edu_ecommerce/viewmodels/Employee.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<EmployeeVM>(create: (_) => EmployeeVM()),
        ChangeNotifierProvider<CartVM>(create: (_) => CartVM())
      ],
      child: MaterialApp(
          title: "Edureka Ecommerce",
          theme: ThemeData(primarySwatch: Colors.deepOrange),
          // gets replaced with router in later session. this is the default screen to load.
          // home: HomeScreen()
          initialRoute: "/",
          routes: routes),
    );
  }
}
