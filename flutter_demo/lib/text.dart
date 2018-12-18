import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本及样式"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            "textAlign使用",
            textAlign: TextAlign.center,
          ),
          Text(
            "yxjie and na will have a sweet end ! " * 4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "缩放因子使用",
            //textScaleFactor文本相对于当前字体大小的缩放因子
            textScaleFactor: 1.5,
          ),
          Text(
            "I miss Na ! (TextStyle使用)",
            style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 18.0,
                //行距
                height: 1.2,
                //字体
                fontFamily: "Courier",
                //decoration添加上划线，下划线，删除线
                decoration: TextDecoration.underline,
                //decorationStyle控制是实线，虚线，两条线，点线
                decorationStyle: TextDecorationStyle.dotted),
          ),
          Text.rich(TextSpan(
            children: [
              TextSpan(text: "我想对na说：(TextSpan使用)"),
              TextSpan(
                text: "I miss U ! Do U known ?",
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
