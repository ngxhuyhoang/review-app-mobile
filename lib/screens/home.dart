import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String arguments;

  Home({ Key key, this.arguments }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print(this.arguments);

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: SizedBox(
              height: 32,
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Tìm kiếm",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    filled: true,
                    fillColor: Colors.transparent,
                    prefixIcon: Icon(Icons.search)),
              ),
            )),
        body: Center(
          child: Text("Home screen"),
        ),
      ),
    );
  }
}
