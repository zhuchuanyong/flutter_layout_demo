import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/page/utils/net.dart';
import 'package:flutter_layout_demo/page/utils/toast.dart';
import 'package:flutter_layout_demo/page/widget/button.dart';
import 'package:flutter_layout_demo/page/widget/image.dart';
import 'package:flutter_layout_demo/page/widget/tab.dart';
import 'package:flutter_layout_demo/page/widget/text.dart';
import 'package:flutter_layout_demo/view/ViewPageItem.dart';

class RouteMap {
  // 路由列表
  static final routes = <String, WidgetBuilder>{
    '/widget/button': (BuildContext context) => new ButtonPage(),
    '/widget/text': (BuildContext context) => new TextPage(),
    '/widget/image': (BuildContext context) => new ImagePage(),
    '/widget/tab': (BuildContext context) => new TabPage(),

    '/utils/net': (BuildContext context) => new NetRequestPage(),
    '/utils/toast': (BuildContext context) => new ToastPage(),
  };

  // 组件列表
  static final List<ListItem> widgetItems = [
    new ListItem(Icons.radio_button_checked, "按钮", "简单的按钮使用", '/widget/button'),
    new ListItem(Icons.text_fields, "文字", "简单的文字使用", '/widget/text'),
    new ListItem(Icons.image, "图片", "简单的图片使用", '/widget/image'),
    new ListItem(Icons.tab, "选项卡", "简单的选项卡使用", '/widget/tab'),
  ];

  // 工具列表
  static final List<ListItem> utilsItems = [
    new ListItem(Icons.http, "网络请求", "详解dio的使用", '/utils/net'),
    new ListItem(Icons.info, "Toast使用", "详解Toast的使用", '/utils/toast'),
  ];

  //拓展列表
  static final List<ListItem> expandItems = [
    new ListItem(Icons.radio_button_checked, "按钮", "简单的按钮使用", '/widget/button'),
  ];
}
