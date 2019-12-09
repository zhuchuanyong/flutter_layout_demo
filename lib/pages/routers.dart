import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/pages/aligin/aligin.dart';
import 'package:flutter_layout_demo/pages/baseWidget/button/index.dart';
import 'package:flutter_layout_demo/pages/baseWidget/text/index.dart';
import 'package:flutter_layout_demo/pages/clip/index.dart';
import 'package:flutter_layout_demo/pages/cloumn/index.dart';
import 'package:flutter_layout_demo/pages/controller/index.dart';
import 'package:flutter_layout_demo/pages/flex/flex.dart';
import 'package:flutter_layout_demo/pages/row/index.dart';
import 'package:flutter_layout_demo/pages/stackPosition/index.dart';
import 'package:flutter_layout_demo/pages/wrap/wrapPage.dart';

// 路由表
Map<String, WidgetBuilder> routers = {
  "text": (content) => TextPage(),
  "button": (content) => ButtonPage(),
  "row": (context) => RowPage(),
  "Column": (context) => CloumnPage(),
  "flex": (context) => FlexPage(),
  "wrap": (context) => WrapPage(),
  "stack Position": (context) => StackPosition(),
  "align": (context) => AlignPage(),
  'controller': (context) => ControllerDemoPage(),
  'clip': (context) => ClipDemoPage(),
};
//   "Controller 例子",
//   "圆角 例子"
List routerListOneName = [
  {"name": '文本Text', 'pathName': 'text'},
  {"name": '按钮Button', 'pathName': 'button'},
  {"name": 'Row布局', 'pathName': 'row'},
  {"name": 'Column布局', 'pathName': 'Column'},
  {"name": 'flex布局', 'pathName': 'flex'},
  {"name": 'Wrap', 'pathName': 'wrap'},
  {"name": 'stack Position', 'pathName': 'stack Position'},
  {"name": 'align', 'pathName': 'align'},
];
List routerListtwo = [
  {"name": 'Controller 例子', 'pathName': 'controller'},
  {"name": '圆角 例子', 'pathName': 'clip'},
];
