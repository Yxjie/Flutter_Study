import 'package:flutter/material.dart';

/**
 * 不能使用StatelessWidget需要使用
 */
class TextFieldWidget2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextFieldWidget2State();
  }
}

class TextFieldWidget2State extends State<TextFieldWidget2> {
  //输入框监听(onChanged是专门用于监听文本变化，而controller的功能却多一些，除了能监听文本变化外，它还可以设置默认值、选择文本)
  TextEditingController _userNameController = new TextEditingController();

  //焦点 --start
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  //焦点 --end

  @override
  void initState() {
    super.initState();
    _userNameController.text = "yxjie5506@gmail.com";
    _userNameController.selection = TextSelection(
        baseOffset: 5, extentOffset: _userNameController.text.length);
    _userNameController.addListener(() {
      print(_userNameController.text);
    });
    //监听焦点状态改变事件
    focusNode1.addListener(() {
      print(focusNode1.hasFocus);
    });
  }

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
            focusNode: focusNode1,
            controller: _userNameController,
            decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: "用户名：",
                hintText: "用户名或邮箱"),
          ),
          Container(
            child: TextField(
              //是否隐藏正在编辑的文本，如用于输入密码的场景等，文本内容会用“•”替换。
              obscureText: true,
              focusNode: focusNode2,
              onChanged: (str) {
                print("onChanged:$str");
              },
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "密码：",
                hintText: "您额登陆密码",
                border: InputBorder.none,
              ),
            ),
            decoration: BoxDecoration(
              //去掉输入框的下划线的颜色（外面需要包一个Container）
              border: Border(bottom: BorderSide(color: Colors.grey[200],width: 1.0))
            ),
          ),

          Builder(builder: (context) {
            return Column(
              children: <Widget>[
                RaisedButton(
                    child: Text("移动焦点"),
                    onPressed: () {
                      if (null == focusScopeNode) {
                        focusScopeNode = FocusScope.of(context);
                      }
                      focusScopeNode.requestFocus(focusNode2);
                    }),
                RaisedButton(
                    child: Text("隐藏键盘"),
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                    })
              ],
            );
          })
        ],
      ),
    );
  }
}
