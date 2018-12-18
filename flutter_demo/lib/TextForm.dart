import 'package:flutter/material.dart';

class TextFormWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return TextFormWidgetState();
  }

}

class TextFormWidgetState extends State<TextFormWidget>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单"),
      ),
//      body: ,
    );
  }

}