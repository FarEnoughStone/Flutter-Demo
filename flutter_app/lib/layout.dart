import 'package:flutter/cupertino.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(//必须有父控件限制，Container宽高才能生效
//          constraints: BoxConstraints.expand(
//            height: 20,
//            width: 10,
//          ),
          color: Color(0xff123244),
          child: Container(
            margin: EdgeInsets.fromLTRB(
                0, MediaQuery.of(context).padding.top, 0, 0),
            color: Color(0xffffcc00),
//            width: 20,
//            height: 40,
            child: Text("Container"),
          ),
        )
      ],
    );
  }
}
