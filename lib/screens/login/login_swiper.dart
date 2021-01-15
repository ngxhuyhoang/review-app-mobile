import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:lottie/lottie.dart';
import 'package:review_app_mobile/core/app_theme.dart';

class LoginSwiper extends StatelessWidget {
  final List<Widget> imageList = [
    Image.asset(
      "assets/images/swipe1.jpg",
    ),
    Image.asset(
      "assets/images/swipe2.png",
    ),
    Image.asset(
      "assets/images/swipe3.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Swiper(
      autoplay: true,
      loop: true,
      itemCount: imageList.length,
      itemWidth: double.infinity,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            margin: EdgeInsets.only(bottom: 32), child: imageList[index]);
      },
      pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
              color: Colors.grey.withOpacity(0.5),
              activeColor: AppTheme.blue3)),
    );
  }
}
