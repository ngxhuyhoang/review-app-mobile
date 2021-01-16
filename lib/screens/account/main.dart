import 'package:flutter/material.dart';
import 'package:review_app_mobile/core/app_theme.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(75),
                child: Image.network("https://picsum.photos/150/150",
                    width: 150, height: 150)),
          ),
        ],
      )),
    );
  }
}
