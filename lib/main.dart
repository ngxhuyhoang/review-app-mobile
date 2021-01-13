import 'package:flutter/material.dart';
import 'package:review_app_mobile/constants/index.dart';
import 'package:review_app_mobile/navigators/tab_bar_navigator.dart';

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
                          text: 'Để chúng tôi thử giúp bạn!',
                          style: Theme.of(context).textTheme.headline),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 64, 32, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFF20AFFF), // 0xAARRGGBB
                        const Color(0xFF0063E0)
                      ],
                    ),
                  ),
                  height: 60,
                  width: double.infinity,
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TabBarNavigator()));
                      },
                      child: Center(
                          child: Text(
                        "Đăng nhập bằng FaceBook",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
