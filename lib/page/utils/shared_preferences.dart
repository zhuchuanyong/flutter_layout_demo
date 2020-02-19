import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/utils/shared_preferences.dart';

class SharedPreferencesPage extends StatefulWidget {
  SharedPreferencesPage({Key key}) : super(key: key);
  final String title = "SharedPreferences使用";
  @override
  _SharedPreferencesPageState createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  String result = "";

  int random;

  void updateResult(String value) {
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
              alignment: MainAxisAlignment.start, //布局方向，默认MainAxisAlignment.end
              mainAxisSize: MainAxisSize.max, //主轴大小，默认MainAxisSize.max
              children: <Widget>[
                // Button集合
                RaisedButton(
                  child: Text('设置String'),
                  color: Colors.blue,
                  onPressed: ()  {
                    SPUtils.getInstance()
                        .putString("username", "xuexiang123")
                        .then((result) =>
                            {updateResult(result ? '设置成功' : '设置失败')});
                  },
                ),
                RaisedButton(
                  child: Text('获取String'),
                  color: Colors.blue,
                  onPressed: () => {
                    updateResult(SPUtils.getInstance().getString("username"))
                  },
                ),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start, //布局方向，默认MainAxisAlignment.end
              mainAxisSize: MainAxisSize.max, //主轴大小，默认MainAxisSize.max
              children: <Widget>[
                // Button集合
                RaisedButton(
                  child: Text('设置Int随机数'),
                  color: Colors.blue,
                  onPressed: ()  {
                    random = Random().nextInt(100);
                    SPUtils.getInstance().putInt("int_key", random).then(
                        (result) =>
                            {updateResult('保存的数字:' + random.toString())});
                  },
                ),
                RaisedButton(
                  child: Text('获取Int'),
                  color: Colors.blue,
                  onPressed: () => {
                    updateResult('获得的数字:' +
                        SPUtils.getInstance().getInt("int_key").toString())
                  },
                ),
              ],
            ),
            Text('结果：\n$result',
                style: TextStyle(fontSize: 14), textAlign: TextAlign.left),
          ],
        ),
      ),
    );
  }
}
