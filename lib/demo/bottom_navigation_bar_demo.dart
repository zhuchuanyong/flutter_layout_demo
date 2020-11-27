import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  BottomNavigationBarDemo({Key key}) : super(key: key);

  @override
  _BottomNavigationBarDemoState createState() =>
      _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed, // 大于等于4个要设置 不然底部变白色
      fixedColor: Colors.black,
      onTap: _onTapHandler,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "list"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "My"),
      ],
    );
  }
}
