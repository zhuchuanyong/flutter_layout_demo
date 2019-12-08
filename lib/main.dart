import 'package:flutter/material.dart';

import 'package:flutter_layout_demo/pages/home.dart';
import 'package:flutter_layout_demo/pages/routers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 布局demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter 布局Demo'),
      routes: routers,
    );
  }
}

//  child: ListView.builder(
//                   itemBuilder: (context, index) {
//                     return InkWell(
//                       onTap: () {
//                         Navigator.of(context).pushNamed(routeLists[index]);
//                       },
//                       child: Card(
//                         child: Container(
//                           alignment: Alignment.centerLeft,
//                           // symmetric 设置对称方向  horizontal 水平
//                           margin: EdgeInsets.symmetric(horizontal: 10),
//                           height: 50,
//                           child: Text(routerName[index]),
//                         ),
//                       ),
//                     );
//                   },
//                   itemCount: routerName.length,
//                 ),
