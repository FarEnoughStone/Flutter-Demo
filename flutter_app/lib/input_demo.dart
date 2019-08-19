import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputDemoState();
  }
}

class _InputDemoState extends State<InputDemo> {
  FocusNode focusNode0 = FocusNode();

  @override
  Widget build(BuildContext context) {
    print('启动');
    FocusScope.of(context).requestFocus(focusNode0);
    return Scaffold(
        appBar: AppBar(
          title: new RawKeyboardListener(
              focusNode: focusNode0,
              onKey: (event) {
                print('code=${event.runtimeType.toString()}');
                if (event.runtimeType.toString() == 'RawKeyDownEvent' &&
                    event.data is RawKeyEventDataAndroid) {
                  RawKeyEventDataAndroid data = event.data;
                  print('code=${data.keyCode}');
                  //获取到keyCode进行判断,4就是返回键
                  if (data.keyCode == 4) {
                    print('按了返回键');
                    return true;
                  }
                }
                return false;
              },
              child: Text("返回按钮测试")),
        ),
        body: Center(
          child: new RawKeyboardListener(
              focusNode: new FocusNode(),
              onKey: (event) {
                if (event.runtimeType.toString() == 'RawKeyDownEvent' &&
                    event.data is RawKeyEventDataAndroid) {
                  RawKeyEventDataAndroid data = event.data;
                  print('其它按键');
                }
                return false;
              },
              child: Text("中心")),
        ));
  }
}
