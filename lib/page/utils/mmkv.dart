import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/utils/mmkv.dart';

class MMKVPage extends StatefulWidget {
  MMKVPage({Key key}) : super(key: key);
  final String title = "MMKV使用";
  @override
  _MMKVPageState createState() => _MMKVPageState();
}

class _MMKVPageState extends State<MMKVPage> {
  String result = "";

  int random;

  void updateResult(dynamic value) {
    setState(() {
      result = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              scrollDirection: Axis.vertical, // 水平listView
              children: <Widget>[
                ButtonBar(
                  alignment:
                      MainAxisAlignment.start, //布局方向，默认MainAxisAlignment.end
                  mainAxisSize: MainAxisSize.max, //主轴大小，默认MainAxisSize.max
                  children: <Widget>[
                    // Button集合
                    RaisedButton(
                      child: Text('设置String'),
                      color: Colors.blue,
                      onPressed: () => {
                        MMKV.putString("username", "zcy").then((result) =>
                            {updateResult(result ? '设置成功' : '设置失败')})
                      },
                    ),
                    RaisedButton(
                      child: Text('获取String'),
                      color: Colors.blue,
                      onPressed: () => {
                        MMKV
                            .getString("username")
                            .then((name) => {updateResult(name)})
                      },
                    ),
                  ],
                ),
                ButtonBar(
                  alignment:
                      MainAxisAlignment.start, //布局方向，默认MainAxisAlignment.end
                  mainAxisSize: MainAxisSize.max, //主轴大小，默认MainAxisSize.max
                  children: <Widget>[
                    // Button集合
                    RaisedButton(
                      child: Text('设置Int随机数'),
                      color: Colors.blue,
                      onPressed: () => {
                        random = Random().nextInt(100),
                        MMKV.putInt("int_key", random).then((result) =>
                            {updateResult('保存的数字:' + random.toString())})
                      },
                    ),
                    RaisedButton(
                      child: Text('获取Int'),
                      color: Colors.blue,
                      onPressed: () => {
                        MMKV.getInt("int_key").then((number) =>
                            {updateResult('获得的数字:' + number.toString())})
                      },
                    ),
                  ],
                ),
                ButtonBar(
                  alignment:
                      MainAxisAlignment.start, //布局方向，默认MainAxisAlignment.end
                  mainAxisSize: MainAxisSize.max, //主轴大小，默认MainAxisSize.max
                  children: <Widget>[
                    // Button集合
                    RaisedButton(
                      child: Text('设置bool'),
                      color: Colors.blue,
                      onPressed: () => {
                        MMKV.putBool("boolKey", true).then((result) =>
                            {updateResult(result ? '设置成功' : '设置失败')})
                      },
                    ),
                    RaisedButton(
                      child: Text('获取bool'),
                      color: Colors.blue,
                      onPressed: () => {
                        MMKV.getBool("boolKey").then((name) {
                          print(name);
                          updateResult(name);
                        })
                      },
                    ),
                  ],
                ),
                Text('结果：\n$result',
                    style: TextStyle(fontSize: 14), textAlign: TextAlign.left),
                Text('bool int 有问题',
                    style: TextStyle(fontSize: 14), textAlign: TextAlign.left),
              ],
            )));
  }
}
