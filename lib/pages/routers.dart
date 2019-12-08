import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/pages/aligin/aligin.dart';
import 'package:flutter_layout_demo/pages/clip/index.dart';
import 'package:flutter_layout_demo/pages/cloumn/index.dart';
import 'package:flutter_layout_demo/pages/controller/index.dart';
import 'package:flutter_layout_demo/pages/flex/flex.dart';
import 'package:flutter_layout_demo/pages/row/index.dart';
import 'package:flutter_layout_demo/pages/stackPosition/index.dart';
import 'package:flutter_layout_demo/pages/wrap/wrapPage.dart';

// 路由表
Map<String, WidgetBuilder> routers = {
  "row": (context) => RowPage(),
  "Column": (context) => CloumnPage(),
  "flex": (context) => FlexPage(),
  "wrap": (context) => WrapPage(),
  "stack Position": (context) => StackPosition(),
  "align": (context) => AlignPage(),
  'controller': (context) => ControllerDemoPage(),
  'clip': (context) => ClipDemoPage(),
};

List routerListOne = [
  'row',
  'Column',
  "flex",
  "wrap",
  "stack Position",
  "align"
];
List routerListtwo = ['controller', 'clip'];
