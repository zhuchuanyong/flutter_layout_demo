import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  final String title = "对话框";
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void showAboutDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AboutDialog(
            applicationName: '应用名称',
            applicationIcon: Icon(Icons.ac_unit),
            applicationVersion: 'V1.0',
            children: <Widget>[Text('我是一个关于的dialog用于描述当前App信息')]));
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('标题'),
        content: Text('确认删除吗'),
        actions: <Widget>[
          FlatButton(
            child: Text('取消'),
            onPressed: () {
              Navigator.of(context).pop('cancel');
            },
          ),
          FlatButton(
            child: Text('确认'),
            onPressed: () {
              Navigator.of(context).pop('ok');
            },
          ),
        ],
      ),
    );
  }

  void showCupertinoAlertDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
        title: Text('标题'),
        content: Text('确认删除吗'),
        actions: <Widget>[
          FlatButton(
            child: Text('取消'),
            onPressed: () {
              Navigator.of(context).pop('cancel');
            },
          ),
          FlatButton(
            child: Text('确认'),
            onPressed: () {
              Navigator.of(context).pop('ok');
            },
          ),
        ],
      ),
    );
  }

  void showSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => SimpleDialog(
          title: Text('提示'),
          children: <Widget>[
            Container(
              height: 80,
              alignment: Alignment.center,

              child: Text('确认删除吗？'),
            ),
            Divider(height: 1,),
            FlatButton(
              child: Text('取消'),
              onPressed: () {
                Navigator.of(context).pop('cancel');
              },
            ),
            Divider(height: 1,),
            FlatButton(
              child: Text('确认'),
              onPressed: () {
                Navigator.of(context).pop('ok');
              },
            ),
          ],
        )
    );
  }

  void showDiyDialog(BuildContext context) {
    showDialog<void>(
      context: context,
        builder: (BuildContext context) {
        return  Dialog(
            child: Text('123'),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: ListView(
              scrollDirection: Axis.vertical, // 水平listView
              children: <Widget>[
                ButtonBar(
                  alignment:
                      MainAxisAlignment.start, //布局方向，默认MainAxisAlignment.end
                  mainAxisSize: MainAxisSize.min, //主轴大小，默认MainAxisSize.max
                  children: <Widget>[
                    RaisedButton(
                      child: Text('AboutDialog'),
                      color: Colors.blue,
                      onPressed: () => {showAboutDialog(context)},
                    ),
                    RaisedButton(
                      child: Text('AlertDialog'),
                      color: Colors.blue,
                      onPressed: () => {showAlertDialog(context)},
                    ),
                    RaisedButton(
                      child: Text('AlertDialog IOS'),
                      color: Colors.blue,
                      onPressed: () => {showCupertinoAlertDialog(context)},
                    ),
                  ],
                ),
                ButtonBar(
                  alignment:
                      MainAxisAlignment.start, //布局方向，默认MainAxisAlignment.end
                  mainAxisSize: MainAxisSize.min, //主轴大小，默认MainAxisSize.max
                  children: <Widget>[
                    RaisedButton(
                      child: Text('SimpleDialog'),
                      color: Colors.blue,
                      onPressed: () => {showSimpleDialog(context)},
                    ),

                    RaisedButton(
                      child: Text('完全自定义Dialog'),
                      color: Colors.blue,
                      onPressed: () => {showDiyDialog(context)},
                    ),
                  ],
                ),
              ],
            )));
  }
}
