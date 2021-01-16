import 'package:flutter/material.dart';
import 'package:review_app_mobile/core/app_theme.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Image.network("https://i.pravatar.cc/300",
              fit: BoxFit.cover, width: double.infinity, height: 300),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(left: 32, right: 32),
            width: double.infinity,
            child: Column(
              children: [
                Text("Hello"),
                Text("Level 5"),
                Text("Thích ăn chơi nhảy múa"),
              ],
            ),
            decoration: BoxDecoration(
                color: AppTheme.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ]),
          )
        ],
      )),
    );
  }
}
