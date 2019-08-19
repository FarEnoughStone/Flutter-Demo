import 'package:flutter/material.dart';
import 'dart:ui' as ui show Image, ImageFilter;

class IconsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("icons demo"),
      ),
      body: Center(
        child: RawImage(
//          image: ui.Image, //https://juejin.im/post/5c10871ae51d451402773231
          width: 300,
          height: 300,
          invertColors: true,
        ),
      ),
    );
  }

  void mmm() {}
}
