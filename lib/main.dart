import 'package:flutter/material.dart';
import 'package:review_app_mobile/constants/index.dart';

import 'navigators/route_generator.dart';
import 'screens/home.dart';
import 'screens/login/main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteGenerator.initialRoute,
      theme: ThemeData(
          fontFamily: "Montserrat",
          primaryColor: primaryColor,
          textTheme: TextTheme(
              display1: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              button: TextStyle(
                color: primaryColor,
              ),
              headline: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.normal,
              ))),
      onGenerateRoute: RouteGenerator.generateRoute
    );
  }
}
