import 'package:flutter/material.dart';

class StackLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("层叠布局Stack,Positioned"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(child: Text("yxjie miss na",),color: Colors.lightBlueAccent,),

            Positioned(child: Text("na"),left: 10.0,top: 10.0,)
          ],
        ),
      ),
    );
  }
}
