import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BtnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: Column(
        //设置在容器中的位置
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("Android中的RaisedButton"),
            color: Colors.deepOrangeAccent,
            splashColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            //正常状态下的阴影
            elevation: 5.0,
            //按下时的阴影
            highlightElevation: 16.0,
            //禁用时的阴影
            disabledElevation: 0.0,
            onPressed: () {},
          ),
          FlatButton(
            child: Text("Android中的FlatButton"),
            color: Colors.pinkAccent[700],
            colorBrightness: Brightness.dark,
            //splashColors水波纹颜色
            splashColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {},
          ),
          OutlineButton(
            child: Text("Android中的OutlineButton"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {},
          ),
          CupertinoButton(
            child: Text("ios风格的按钮"),
            color: CupertinoColors.activeBlue,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
