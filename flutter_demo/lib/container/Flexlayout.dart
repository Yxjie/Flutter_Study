import 'package:flutter/material.dart';

class FlexLayoutWidget extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("弹性布局Flex"),
      ),

      body: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.redAccent,
                  height: 30.0,
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  color: Colors.lightBlueAccent,
                  height: 30.0,
                ),
                flex: 2,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SizedBox(
              height: 100.0,
              child: Container(
                color: Colors.grey,
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 30.0,
                        color: Colors.redAccent,
                      ),
                      flex: 2,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        height: 50.0,
                        color: Colors.greenAccent,
                      ),
                      flex: 1,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  
}