import 'package:flutter/cupertino.dart';
import 'package:vector_math/vector_math.dart';

class TextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      child: Container(
          margin:
              EdgeInsets.fromLTRB(0, MediaQuery.of(context).padding.top, 0, 0),
          child: Column(
            children: <Widget>[
              Text("text1"),
              Container(
                width: 200,
                height: 150,
                color: Color(0x99cccccc),
//                alignment: Alignment.centerLeft,
                child: Text(
                  "text2xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff123400),
                    fontSize: 21,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic,
                  ),
                  textScaleFactor: 1,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              )

            ],
          )),
    );
  }
}
