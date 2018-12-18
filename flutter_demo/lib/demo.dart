import 'package:flutter/material.dart';
import 'routerSheet.dart';
import 'Cupertino.dart';
import 'text.dart';
import 'btn.dart';
import 'icon.dart';
import 'switchAndCheckbox.dart';
import 'textField.dart';

class DemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("使用案例"),
      ),
      body: ListView(
        children: <Widget>[
          CustomList(
              title: "路由表使用",
              callback: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RouterSheetWidget();
                }));
              }),
          CustomList(
            title: "Cupertino widget使用（ios界面风格）",
            callback: () {
              //尖头函数表示
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CupertinoWidget()));
            },
          ),
          CustomList(
              title: "Text文本及样式",
              callback: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TextWidget()));
              }),
          CustomList(
              title: "按钮使用",
              callback: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BtnWidget()));
              }),
          CustomList(
              title: "图片及ICON",
              callback: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IconWidget()));
              }),
          CustomList(
              title: "单选开关和复选框",
              callback: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SwitchAndCheckboxWidget()));
              }),
          CustomList(
              title: "输入框及表单",
              callback: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TextFieldWidget()));
              })
        ],
      ),
    );
  }
}

//自定义List列表以及分隔线
class CustomList extends StatelessWidget {
  CustomList({Key key, @required this.title, @required this.callback})
      : super(key: key);

  final String title;

  //GestureDragCancelCallback源码提供回调方法
  final GestureDragCancelCallback callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(title),
          onTap: callback,
        ),
        Divider(
          height: 1.0,
        )
      ],
    );
  }
}
