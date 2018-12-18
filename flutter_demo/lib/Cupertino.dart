import 'package:flutter/cupertino.dart';

class CupertinoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("ios风格展示"),
          trailing: Icon(
            CupertinoIcons.add_circled,
          ),
        ),
        child: Center(
          child: CupertinoButton(
              color: CupertinoColors.activeBlue,
              child: Text("Press"),
              onPressed: () {}),
        ));
  }
}
