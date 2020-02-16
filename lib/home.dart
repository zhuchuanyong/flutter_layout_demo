import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/ViewPageItem.dart';
import 'package:flutter_layout_demo/router/route.dart';

class MainHomePage extends StatefulWidget {
  final String title = "Flutter学习";
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final List<Tab> mTabs = <Tab>[
    Tab(text: '组件'),
    Tab(text: '工具'),
    Tab(text: '拓展')
  ];

  final List<Widget> mTabViews = <Widget>[
    ViewPageItem(items: RouteMap.widgetItems),
    ViewPageItem(items: RouteMap.utilsItems),
    ViewPageItem(items: RouteMap.expandItems),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: mTabs.length);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          controller: _tabController,
          tabs: mTabs,
          // tabs: mTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: mTabViews.map((Widget widget) {
          return widget;
        }).toList(),

        // 应该是固定用法 把Widget数组map后再toList
        // mTabViews.map((Widget widget) {
        //   return widget;
        // }).toList(),
      ),
    );
  }
}
