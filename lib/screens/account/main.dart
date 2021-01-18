import 'package:flutter/material.dart';
import 'package:review_app_mobile/core/app_theme.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network("https://i.pravatar.cc/100",
                            width: 75, height: 75)),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Trần Thị Something",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Row(
                            children: [
                              Icon(Icons.location_on,
                                  size: 16, color: Colors.grey),
                              SizedBox(width: 4),
                              Text("Hà Nội"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // SETTINGS
              Container(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Column(
                  children: [
                    // SETTING TITLE
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Title setting",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          )),
                    ),

                    // SETTING ITEM
                    Container(
                      height: 48,
                      margin: EdgeInsets.only(top: 8),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.redAccent,
                                ),
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                )),
                            Container(width: 8),
                            Text("Do something")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 48,
                      margin: EdgeInsets.only(top: 8),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.blueAccent,
                                ),
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                )),
                            Container(width: 8),
                            Text("Do something")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 48,
                      margin: EdgeInsets.only(top: 8),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.orangeAccent,
                                ),
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                )),
                            Container(width: 8),
                            Text("Do something")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 48,
                      margin: EdgeInsets.only(top: 8),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.lightBlueAccent,
                                ),
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                )),
                            Container(width: 8),
                            Text("Do something")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // SETTINGS
              Container(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Column(
                  children: [
                    // SETTING TITLE
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Title setting",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          )),
                    ),

                    // SETTING ITEM
                    Container(
                      height: 48,
                      margin: EdgeInsets.only(top: 8),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.redAccent,
                                ),
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                )),
                            Container(width: 8),
                            Text("Do something")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 48,
                      margin: EdgeInsets.only(top: 8),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.blueAccent,
                                ),
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                )),
                            Container(width: 8),
                            Text("Do something")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 48,
                      margin: EdgeInsets.only(top: 8),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.orangeAccent,
                                ),
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                )),
                            Container(width: 8),
                            Text("Do something")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 48,
                      margin: EdgeInsets.only(top: 8),
                      child: OutlineButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.lightBlueAccent,
                                ),
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                )),
                            Container(width: 8),
                            Text("Do something")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // LOGOUT BUTTON
              Container(
                margin: EdgeInsets.only(top: 16),
                child: FlatButton(
                    onPressed: () {},
                    child: Text("Đăng xuất", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
