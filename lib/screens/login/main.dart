import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_app_mobile/core/app_icon.dart';
import 'package:review_app_mobile/core/app_theme.dart';
import 'package:review_app_mobile/navigators/route_generator.dart';

import '../home.dart';
import 'login_swiper.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 16, top: 32),
                child: Column(
                  children: [
                    Text(
                      "Xin chào...!",
                      style: GoogleFonts.montserrat(fontSize: 32),
                    ),
                    Text(
                      "Những địa điểm thú vị đang đợi bạn",
                      style: GoogleFonts.montserrat(fontSize: 16),
                    ),
                  ],
                )),
            Spacer(),
            SizedBox(height: 400, child: LoginSwiper()),
            Spacer(),
            Container(
              margin: EdgeInsets.fromLTRB(32, 0, 32, 64),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: AppTheme.blue3,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ]),
              height: 60,
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteGenerator.homeRoute,
                      arguments: "Test");
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        width: 32,
                        height: 32,
                        padding: EdgeInsets.only(left: 6, top: 8),
                        margin: EdgeInsets.only(left: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: AppTheme.white,
                        ),
                        child: AppIcon.facebook),
                    Spacer(),
                    Text(
                      "Đăng nhập bằng FaceBook",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Spacer(),
                    Container(
                      width: 32,
                      height: 32,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
