import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_app_mobile/core/app_theme.dart';
import 'package:review_app_mobile/navigators/tab_bar_navigator.dart';

import 'login_swiper.dart';

class LoginScreen extends StatelessWidget {
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
                      style: GoogleFonts.montserrat(
                        fontSize: 32
                      ),
                    ),
                    Text(
                      "Những địa điểm thú vị đang đợi bạn",
                      style: GoogleFonts.montserrat(
                          fontSize: 16
                      ),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      width: 32,
                      height: 32,
                      padding: EdgeInsets.only(top: 4),
                      margin: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: AppTheme.white,
                      ),
                      child: Image.asset(
                        'assets/icons/ic_facebook_blue.png',
                      )),
                  Text(
                    "Đăng nhập bằng FaceBook",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Container(width: 32)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
