import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  final String title = '按钮';
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Scrollbar(
          child: ListView(
            scrollDirection: Axis.vertical, // 水平listView
            children: <Widget>[
              ButtonBar(
                alignment: MainAxisAlignment
                    .spaceAround, //布局方向，默认MainAxisAlignment.end
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  // Button集合
                  RaisedButton(
                    child: Text('按钮1'),
                    color: Colors.blue,
                    onPressed: () => {},
                  ),
                  RaisedButton(
                    child: Text('按钮2'),
                    color: Colors.red,
                    onPressed: () => {},
                  ),
                ],
              ),
              ButtonBar(
                alignment:
                    MainAxisAlignment.start, //布局方向，默认MainAxisAlignment.end
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Button集合
                  RaisedButton(
                    child: Text(
                      '按钮3',
                      style: new TextStyle(
                        color: const Color(0xffffffff), //文字颜色
                        decorationColor: const Color(0xffffffff), //线的颜色
                        decoration: TextDecoration
                            .overline, //none无文字装饰   lineThrough删除线   overline文字上面显示线    underline文字下面显
                      ),
                    ),
                    color: Colors.yellow,
                    onPressed: () => {},
                  ),
                  RaisedButton(
                    child: Text(
                      '按钮4',
                      style: new TextStyle(
                        color: const Color(0xffffffff), //文字颜色
                        decorationColor: const Color(0xffffffff), //线的颜色
                        fontStyle: FontStyle.italic, //文字样式，斜体和正常
                        fontSize: 20.0, //字体大小
                        fontWeight: FontWeight.w900, //字体粗细  粗体和正常
                      ),
                    ),
                    color: Colors.pink,
                    onPressed: () => {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
