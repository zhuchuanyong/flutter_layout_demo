import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('row'),
      ),
      body: Column(
        //测试Row对齐方式，排除Column默认居中对齐的干扰
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // mainAxisAlignment  属性
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[Text('柴米油盐'), Text('白米稀饭')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // 居中
            children: <Widget>[Text('柴米油盐'), Text('白米稀饭')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[Text('柴米油盐'), Text('白米稀饭')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[Text('柴米油盐'), Text('白米稀饭')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[Text('柴米油盐'), Text('白米稀饭')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[Text('柴米油盐'), Text('白米稀饭')],
          ),
          // TextDirection  属性
          Row(
            textDirection: TextDirection.ltr,
            children: <Widget>[Text('柴米油盐'), Text('白米稀饭')],
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: <Widget>[Text('柴米油盐'), Text('白米稀饭')],
          ),
          // mainAxisSize 属性
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[Text('柴米油盐'), Text('白米稀饭')],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Text('柴米油盐'), Text('白米稀饭')],
          ),
          // verticalDirection
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Text('柴米油盐', style: TextStyle(fontSize: 30.0)),
              Text('白米稀饭')
            ],
          ),
        ],
      ),
    );
  }
}
