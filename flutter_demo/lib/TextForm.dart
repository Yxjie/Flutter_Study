import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextFormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextFormWidgetState();
  }
}

class TextFormWidgetState extends State<TextFormWidget> {
  //输入框监听
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _unameController.text = "yxjie5506@gmail.com";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
            //设置globalKey，用于后面获取FormState
            key: _formKey,
            //开启自校验
            autovalidate: true,
            child: Column(
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  controller: _unameController,
                  decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: "用户名",
                      hintText: "用户名或是邮箱"),
                  validator: (str) {
                    return str.trim().length > 0 ? null : "用户名不能为空";
                  },
                ),

                TextFormField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: "密码",
                      hintText: "您的登陆密码"),
                  obscureText: true,
                  //校验密码
                  validator: (pwd) {
                    return pwd.trim().length > 5 ? null : "密码不能少于6位";
                  },
                ),
                //登陆哦按钮
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        child: Text("登陆"),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          if ((_formKey.currentState as FormState).validate()) {
                            Fluttertoast.showToast(
                              msg: "数据验证成功！",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                            );
                          }
                        },
                      ))
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
