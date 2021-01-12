import 'package:flutter/material.dart';
import 'package:review_app_mobile/constants/index.dart';

void main() {
  runApp(MyApp());
}

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
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image_background.jpg"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter)),
              )),
          Expanded(
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Review App\n',
                          style: Theme.of(context).textTheme.display1),
                      TextSpan(
                          text: 'Master The Art Of Reviewing',
                          style: Theme.of(context).textTheme.headline),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
