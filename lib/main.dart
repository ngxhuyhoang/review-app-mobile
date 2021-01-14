import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:review_app_mobile/constants/index.dart';

import 'screens/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
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
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LoginScreen(),
      ),
    );
  }
}
