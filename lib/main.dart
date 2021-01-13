import 'package:flutter/material.dart';
import 'package:review_app_mobile/constants/index.dart';

import 'screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: backgroundColor,
          textTheme: TextTheme(
              display1: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              button: TextStyle(
                color: primaryColor,
              ),
              headline: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ))),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LoginScreen(),
      ),
    );
  }
}
