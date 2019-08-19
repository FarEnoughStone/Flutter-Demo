import 'package:flutter/material.dart';

class IconsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("icons demo"),
      ),
      body: Center(
        child: Icon(
          Icons.access_alarm, //官方矢量图，可根据IconData格式传入自定义矢量图
          color: Colors.amber, //颜色
          size: 100, //大小
        ),
      ),
    );
  }
}
