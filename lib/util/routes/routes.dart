import 'package:flutter/material.dart';
import 'package:mvvm/util/routes/routes_name.dart';
import 'package:mvvm/view/home_screen.dart';
import 'package:mvvm/view/logIn_screen.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LogInScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("No routes is there/Defined"),
            ),
          );
        });
    }
  }
}
