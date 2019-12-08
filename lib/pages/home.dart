import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/pages/routers.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 获取路由表的key 并转成数组
    var routeLists = routers.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routeLists[index]);
              },
              child: Card(
                child: Container(
                  alignment: Alignment.centerLeft,
                  // symmetric 设置对称方向  horizontal 水平
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  child: Text(routerName[index]),
                ),
              ),
            );
          },
          itemCount: routerName.length,
        ),
      ),
    );
  }
}

// 路由名称
const routerName = [
  "Row布局",
  "Column布局",
  "flex布局",
  "Wrap",
  "stack Position",
  "align ",
  "Controller 例子",
  "圆角 例子"
];
