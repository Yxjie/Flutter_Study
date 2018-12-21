import 'package:flutter/material.dart';

class FlowLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局Flow,Wrap"),
      ),
      body: Column(
        children: <Widget>[
          Text("Row页面展示溢出问题"),
          Row(
            children: <Widget>[
              Text("yxjie " * 100),
            ],
          ),
          Text("Wrap布局"),
          Wrap(
            spacing: 8.0, // 主轴(水平)方向间距
            runSpacing: 4.0, // 纵轴（垂直）方向间距
            alignment: WrapAlignment.center, //沿主轴方向居中
            children: <Widget>[
              Chip(
                label: Text("Yxjie"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  child: Text("Y"),
                ),
              ),

              Chip(
                label: Text("Lina"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  child: Text("L"),
                ),
              ),

              Chip(
                label: Text("Nana"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  child: Text("N"),
                ),
              ),

              Chip(
                label: Text("Lina"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  child: Text("L"),
                ),
              ),

              Chip(
                label: Text("Apple"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  child: Text("A"),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
