import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图片及ICON"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "从asset加载图片",
              style: TextStyle(color: Colors.orangeAccent),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image(
                  image: AssetImage("images/car.png"),
                  width: 200.0,
                  //在图片绘制时可以对每一个像素进行颜色混合处理，color指定混合色，而colorBlendMode指定混合模式，
                  color: Colors.lightBlueAccent,
                  colorBlendMode: BlendMode.difference,
                ),
                Image.asset(
                  "images/car.png",
                  width: 100.0,
                  //本身大小小于显示空间时，指定图片的重复规则
                  repeat: ImageRepeat.repeatX,
                  color: Colors.yellow,
                  colorBlendMode: BlendMode.colorBurn,
                ),
              ],
            ),
            Text("从网络加载图片", style: TextStyle(color: Colors.orangeAccent)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      "http://b392.photo.store.qq.com/psb?/V11LtxAG3Kx39m/2cwkvt4EBNWNxgVPkmTVePZQuMm8KOT2aAtAClHAnhg!/b/dI08tOnyHAAA&bo=wAOAAgAAAAABB2E!&rf=viewer_4"),
                  width: 200.0,
                ),
                Image.network(
                  "http://b392.photo.store.qq.com/psb?/V11LtxAG3Kx39m/2cwkvt4EBNWNxgVPkmTVePZQuMm8KOT2aAtAClHAnhg!/b/dI08tOnyHAAA&bo=wAOAAgAAAAABB2E!&rf=viewer_4",
                  width: 100.0,
                  //缩放模式
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
            Text("ICON"),
            Row(
              children: <Widget>[
                Icon(
                  Icons.accessible,
                  color: Colors.redAccent,
                ),
                Icon(
                  Icons.error,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.fingerprint,
                  color: Colors.blueAccent,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
