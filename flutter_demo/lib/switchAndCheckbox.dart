import 'package:flutter/material.dart';

class SwitchAndCheckboxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SwitchAndCheckboxWidgetState();
  }
}

class SwitchAndCheckboxWidgetState extends State<SwitchAndCheckboxWidget> {
  bool _switchSelected = true;
  bool _checkSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("单选开关和复选框"),
      ),
      body: Column(
        children: <Widget>[
          Switch(
              //当前状态
              value: _switchSelected,
              onChanged: (value) {
                setState(() {
                  _switchSelected = value;
                });
              }),
          Checkbox(
              //Checkbox有一个属性tristate ，表示是否为三态，其默认值为false ，
              // 这时Checkbox有两种状态即“选中”和“不选中”，对应的value值为true和false ；
              // 如果其值为true时，value的值会增加一个状态null
              //当前状态
              value: _checkSelected,
              //选中时的颜色
              activeColor: Colors.redAccent,
              onChanged: (value) {
                setState(() {
                  _checkSelected = value;
                });
              })
        ],
      ),
    );
  }
}
