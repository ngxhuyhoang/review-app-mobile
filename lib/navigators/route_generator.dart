import 'package:flutter/material.dart';
import 'package:review_app_mobile/screens/home.dart';
import 'package:review_app_mobile/screens/login/main.dart';

class RouteGenerator {
  static final String homeRoute = "/home";
  static final String loginRoute = "/login";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(builder: (context) => Home(arguments: args));
        break;
      case "/login":
        return MaterialPageRoute(builder: (context) => Login());
        break;
      default:
        return MaterialPageRoute(builder: (context) => Login());
    }
  }
}