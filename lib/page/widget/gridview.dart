/*
 * @Author: zhuchuanyong
 * @Date: 2020-05-19 22:55:22
 * @LastEditors: zhuchuanyong
 * @LastEditTime: 2020-05-20 00:20:57
 * @FilePath: \lib\page\widget\gridview.dart
 */

import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  final String title = "GridView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(title)), body: GridViewwDemo());
  }
}

//
class GridViewwDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length){
    return  List.generate(length, (int index) {
      return Container(color: Colors.grey[300], alignment: Alignment.center,child: Text('${index}' ,style:TextStyle(fontSize: 18.0)),);
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children:_buildTiles(100),
    );
  }
}
