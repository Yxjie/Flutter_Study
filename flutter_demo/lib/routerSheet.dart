import 'package:flutter/material.dart';

class RouterSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由表使用"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            GestureDetector(
              child: Text(
                "回到上一页",
                style: TextStyle(
                  fontSize: 26.0,
                  color: Colors.orangeAccent,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            GestureDetector(
              child: Text(
                "回到首页",
                style: TextStyle(
                  fontSize: 26.0,
                  color: Colors.orangeAccent,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "home_page");
              },
            ),
          ],
        ),
      ),
    );
  }
}
