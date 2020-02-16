import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/widget/button.dart';
import 'package:flutter_layout_demo/widget/image.dart';
import 'package:flutter_layout_demo/widget/tab.dart';
import 'package:flutter_layout_demo/widget/text.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainHomePage(),
      //  路由
      routes: <String, WidgetBuilder>{
        '/widget/button': (BuildContext context) => new ButtonPage(),
        '/widget/text': (BuildContext context) => new TextPage(),
        '/widget/image': (BuildContext context) => new ImagePage(),
        '/widget/tab': (BuildContext context) => new TabPage(),
      },
    );
  }
}
