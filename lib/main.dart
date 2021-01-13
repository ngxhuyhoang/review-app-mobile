import 'package:flutter/material.dart';
import 'package:review_app_mobile/navigators/tab_bar_navigator.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: TabBarNavigator(),
      ),
    );
  }
}
