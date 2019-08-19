import 'package:flutter/material.dart';

class ImageStatelessDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("无状态图片"),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/logo.png'),
          width: 300,
          height: 300,
          //对齐方式 参数：-1.0，0，1.0
          alignment: Alignment(0, 0),
          //拉伸填充的区域，相当于在图片内部设置了一个.9图，但是需要注意的是，要在显示图片
          //的大小大于原图的情况下才可以使用这个属性，要不然会报错。与fit不能共用
//          centerSlice: Rect.fromCircle(center: Offset(100, 100), radius: 10.0),
          color: Color(0x99345678), //要混合的颜色
          colorBlendMode: BlendMode.xor, //混合的模式
          excludeFromSemantics: true, //??
          filterQuality: FilterQuality.high, //图片质量？
//          fit: BoxFit.cover, //图片填充模式 与centerSlice不能共用
//            frameBuilder:,//已被排除
//            loadingBuilder:,//已被排除

          //无间隙切换，当image provider 发生变化时，显示新图片的过程中，
          // 如果true则保留旧图片直至显示出新图片为止；如果false，则显示新图片的过程中，空白，不保留旧图片。
          gaplessPlayback:true,

          matchTextDirection: true, //匹配文字方向，一般与TextDirection一起使用

          repeat: ImageRepeat.repeat, //未填满的部分如何显示

          semanticLabel: "sssssssssssssss", //图片描述,不会被显示，
        ),
      ),
    );
  }
}
