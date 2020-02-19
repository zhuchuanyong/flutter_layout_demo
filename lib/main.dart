import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/router/route.dart';
import 'package:flutter_layout_demo/utils/shared_preferences.dart';
import 'home.dart';

void main() => {runApp(MyApp()), init()};

//程序初始化操作
void init() {
  SPUtils.getInstance().init();
}

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
      routes: RouteMap.routes,
    );
  }
}
