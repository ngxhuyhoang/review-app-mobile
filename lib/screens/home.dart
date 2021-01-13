import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: TextField(
            decoration: InputDecoration(
                labelText: "Tìm kiếm",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.transparent,
                prefixIcon: Icon(Icons.search)),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Home screen"),
        ),
      ),
    );
  }
}
