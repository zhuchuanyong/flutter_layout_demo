/*
 * @Author: zhuchuanyong
 * @Date: 2020-12-05 01:12:01
 * @LastEditors: zhuchuanyong
 * @LastEditTime: 2020-12-05 01:22:35
 * @FilePath: \lib\demo\snack_bar_demo.dart
 */
import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  SnackBarDemo({Key key}) : super(key: key);

  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBarDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[SnackBarButton()],
            ),
          ],
        ),
      ),
    );
  }
}

class SnackBarButton extends StatelessWidget {
  const SnackBarButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('processing...'),
          action: SnackBarAction(
            label: "ok",
            onPressed: () {},
          ),
        ));
      },
      child: Text('SnackBarButton'),
    );
  }
}
