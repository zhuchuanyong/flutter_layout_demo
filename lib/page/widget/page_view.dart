/*
 * @Author: zhuchuanyong
 * @Date: 2020-05-19 22:55:22
 * @LastEditors: zhuchuanyong
 * @LastEditTime: 2020-05-19 23:57:32
 * @FilePath: \lib\page\widget\page_view.dart
 */

import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  final String title = "pageView";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body:PageViewDemo()
    );
  }
}

// 
class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  PageView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              'ONE',
              style: TextStyle(fontSize: 32.0, color: Colors.black),
            ),
          ),
           Container(
            alignment: Alignment.center,
            child: Text(
              'TWO',
              style: TextStyle(fontSize: 32.0, color: Colors.black),
            ),
          ),
           Container(
            alignment: Alignment.center,
            child: Text(
              'THREE',
              style: TextStyle(fontSize: 32.0, color: Colors.black),
            ),
          ),
        ],
      );
  }
}
