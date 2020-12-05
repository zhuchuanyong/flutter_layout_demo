/*
 * @Author: zhuchuanyong
 * @Date: 2020-12-05 01:12:01
 * @LastEditors: zhuchuanyong
 * @LastEditTime: 2020-12-06 01:36:38
 * @FilePath: \lib\demo\data_table_demo.dart
 */
import 'package:flutter/material.dart';

import '../model/post.dart';
import '../model/post.dart';

class DataTableDemo extends StatefulWidget {
  DataTableDemo({Key key}) : super(key: key);

  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              sortColumnIndex: 0,
              sortAscending: false,
              columns: [
                DataColumn(
                  // label: Container(
                  //   child: Text('title'),
                  //   width: 80.0,
                  // ),
                  label: Text('title'),
                ),
                DataColumn(
                  label: Text('auther'),
                ),
                DataColumn(
                  label: Text('Image'),
                ),
              ],
              rows: posts.map((item) {
                return DataRow(
                  // selected: posts.selected,
                  cells: [
                    DataCell(Text(item.title)),
                    DataCell(Text(item.author)),
                    DataCell(Image.network(item.imageUrl)),
                  ],
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
