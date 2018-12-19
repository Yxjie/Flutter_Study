import 'package:flutter/material.dart';

/**
 * (开启开发者模式查看效果)
 * 第一个Row很简单，默认为居中对齐；第二个Row，
 * 由于mainAxisSize值为MainAxisSize.min，Row的宽度等于两个Text的宽度和，
 * 所以对齐是无意义的，所以会从左往右显示；第三个Row设置textDirection值为TextDirection.rtl，
 * 所以子widget会从右向左的顺序排列，而此时MainAxisAlignment.end表示左对齐，所以最终显示结果就是图中第三行的样子；
 * 第四个Row测试的是纵轴的对齐方式，由于两个子Text字体不一样，所以其高度也不同，我们指定了verticalDirection值为VerticalDirection.up，
 * 即从低向顶排列，而此时crossAxisAlignment值为CrossAxisAlignment.start表示底对齐。
 */
class LinearlayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("线性布局Row和Column"),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("hello word"),
              Text(" I am Yxjie "),
            ],
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("hello word"),
              Text(" I am Yxjie "),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text("hello word"),
              Text(" I am Yxjie "),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            //默认是VerticalDirection.down，表示从上到下
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text(" hello world ", style: TextStyle(fontSize: 30.0),),
              Text(" I am Jack "),
            ],
          ),

        ],
      ),
    );
  }
}
