import 'package:flutter/material.dart';


class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框及表单"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            //是否自动获取焦点
            autofocus: true,
            onChanged: (str) {
              print("onChanged: $str");
            },
            decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: "用户名：",
                hintText: "用户名或邮箱"),
          ),
          TextField(
            //是否隐藏正在编辑的文本，如用于输入密码的场景等，文本内容会用“•”替换。
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: "密码：",
              hintText: "您额登陆密码",
            ),
          ),
        ],
      ),
    );
  }
}






