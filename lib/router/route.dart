import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/home.dart';
import 'package:flutter_layout_demo/page/utils/mmkv.dart';
import 'package:flutter_layout_demo/page/utils/net.dart';
import 'package:flutter_layout_demo/page/utils/shared_preferences.dart';
import 'package:flutter_layout_demo/page/utils/sqlite.dart';
import 'package:flutter_layout_demo/page/utils/toast.dart';
import 'package:flutter_layout_demo/page/widget/bottom_navigation_bar.dart';
import 'package:flutter_layout_demo/page/widget/dialog.dart';
import 'package:flutter_layout_demo/page/widget/button.dart';
import 'package:flutter_layout_demo/page/widget/drawer.dart';
import 'package:flutter_layout_demo/page/widget/image.dart';
import 'package:flutter_layout_demo/page/widget/tab.dart';
import 'package:flutter_layout_demo/page/widget/text.dart';
import 'package:flutter_layout_demo/view/ViewPageItem.dart';

class RouteMap {
  // 路由列表
  static final routes = <String, WidgetBuilder>{
    '/home': (BuildContext context) => new MainHomePage(),

    //=============================================================//

    '/widget/button': (BuildContext context) => new ButtonPage(),
    '/widget/text': (BuildContext context) => new TextPage(),
    '/widget/image': (BuildContext context) => new ImagePage(),
    '/widget/tab': (BuildContext context) => new TabPage(),
    '/widget/navigation': (BuildContext context) => new BottomNavigationBarPage(),
    '/widget/dialog': (BuildContext context) => new DialogPage(),
    '/widget/drawer': (BuildContext context) => new DrawerPage(),

    //=============================================================//

    '/utils/net': (BuildContext context) => new NetRequestPage(),
    '/utils/toast': (BuildContext context) => new ToastPage(),
    '/utils/mmkv': (BuildContext context) => new MMKVPage(),
    '/utils/shared_preferences': (BuildContext context) =>
        new SharedPreferencesPage(),
    '/utils/sqlite': (BuildContext context) => new SqlitePage(),
  };

  // 组件列表
  static final List<ListItem> widgetItems = [
    new ListItem(
        Icons.radio_button_checked, "按钮2", "简单的按钮使用", '/widget/button'),
    new ListItem(Icons.text_fields, "文字", "简单的文字使用", '/widget/text'),
    new ListItem(Icons.image, "图片", "简单的图片使用", '/widget/image'),
    new ListItem(Icons.tab, "选项卡", "简单的选项卡使用", '/widget/tab'),
    new ListItem(Icons.navigation, "底部导航栏", "简单的底部导航栏使用", '/widget/navigation'),
    new ListItem(Icons.notifications, "对话框", "简单的对话框使用", '/widget/dialog'),
    new ListItem(Icons.menu, "侧滑菜单", "简单侧滑菜单的使用", '/widget/drawer'),
  ];

  // 工具列表
  static final List<ListItem> utilsItems = [
    new ListItem(Icons.http, "网络请求", "详解dio的使用", '/utils/net'),
    new ListItem(Icons.info, "Toast使用", "详解Toast的使用", '/utils/toast'),
    new ListItem(Icons.data_usage, "MMKV使用", "腾讯MMKV键值对使用", '/utils/mmkv'),
    new ListItem(Icons.data_usage, "SharedPreferences使用",
        "SharedPreferences键值对使用", '/utils/shared_preferences'),
    new ListItem(
        Icons.data_usage, "Sqlite数据库使用", "Sqlite增删改查操作", '/utils/sqlite'),
  ];

  //拓展列表
  static final List<ListItem> expandItems = [
    new ListItem(Icons.radio_button_checked, "按钮", "简单的按钮使用", '/widget/button'),
  ];
}
