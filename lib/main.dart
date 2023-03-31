import "package:edu_ecommerce/routes.dart";
import "package:flutter/material.dart";
import "./widgets/HomeScreen.dart";
import "./widgets/CartScreen.dart";

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Edureka Ecommerce",
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        // gets replaced with router in later session. this is the default screen to load.
        // home: HomeScreen()
        initialRoute: "/",
        routes: routes);
  }
}
