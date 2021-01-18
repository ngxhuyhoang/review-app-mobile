import 'package:flutter/material.dart';
import 'package:review_app_mobile/core/app_theme.dart';
import 'package:review_app_mobile/screens/account/main.dart';
import 'package:review_app_mobile/screens/home.dart';
import 'package:review_app_mobile/screens/location.dart';
import 'package:review_app_mobile/screens/new_post.dart';
import 'package:review_app_mobile/screens/notification.dart';

class TabBarNavigator extends StatefulWidget {
  @override
  _TabBarNavigator createState() => _TabBarNavigator();
}

class _TabBarNavigator extends State<TabBarNavigator> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      Home(),
      Location(),
      Account(),
      NewPost(),
      Notifications()
    ];

    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppTheme.blue1,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        onTap: (int index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: "Location"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
        ],
      ),
    );
  }
}
