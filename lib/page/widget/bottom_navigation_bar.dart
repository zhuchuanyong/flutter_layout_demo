import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  final String title = "底部导航栏";
  @override
  _BottomNavigationBarPageState createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  // 定义索引
  int _currentIndex = 0;

  //  简单定义要显示页面
  final List<Widget> pages = <Widget>[
    Center(
      child: Text('主页'),
    ),
    Center(
      child: Text('设置页面'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: pages[_currentIndex],
        // 底部导航
        bottomNavigationBar: BottomNavigationBar(
          // 当前选中
          currentIndex: _currentIndex,
          //  导航列表
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("主页")),
            BottomNavigationBarItem(icon: Icon(Icons.build), title: Text("设置")),
          ],
          // 点击方法
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
