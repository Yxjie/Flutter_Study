import 'package:flutter/material.dart';
import 'routerSheet.dart';

class DemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("使用Demo"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("路由表学习使用"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RouterSheetWidget();
              }));
            },
          ),
          Divider(
            height: 1.0,
          ),
        ],
      ),
    );
  }
}
