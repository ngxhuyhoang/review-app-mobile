import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:review_app_mobile/navigators/tab_bar_navigator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class LoginScreen extends StatelessWidget {
  final List<String> imageList = [
    "https://picsum.photos/300/300?random=1",
    "https://picsum.photos/300/300?random=2",
    "https://picsum.photos/300/300?random=3",
    "https://picsum.photos/300/300?random=4",
    "https://picsum.photos/300/300?random=5",
  ];

  final List<Map<String, dynamic>> imageDescription = [
    {'title': 'Ahih', 'subTitle': "ahihihihiiihih"},
    {'title': 'Ahih1', 'subTitle': "ahihihihiiihih"},
    {'title': 'Ahih2', 'subTitle': "ahihihihiiihih"},
    {'title': 'Ahih3', 'subTitle': "ahihihihiiihih"},
    {'title': 'Ahih4', 'subTitle': "ahihihihiiihih"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Swiper(
                  itemCount: imageList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(children: [
                      CachedNetworkImage(
                        imageUrl: imageList[index],
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  imageDescription[index]['title'],
                                ),
                                Text(imageDescription[index]['subTitle']),
                              ],
                            )
                          ]),
                    ]);
                  },
                  itemWidth: double.infinity,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.black, activeColor: Colors.red
                    )
                  ),
                )),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(32, 64, 32, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFF20AFFF),
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
      ),
    );
  }
}
