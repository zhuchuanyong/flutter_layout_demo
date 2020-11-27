import 'package:flutter/material.dart';

import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/listView_demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigration",
            onPressed: () => debugPrint('button'),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "search",
              onPressed: () => debugPrint('search'),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: "search",
              onPressed: () => debugPrint('more_horiz'),
            ),
          ],
          title: Text("Number one"),
          bottom: TabBar(
            unselectedLabelColor: Colors.black38, // 未选中颜色
            indicatorColor: Colors.black54, // 指示器颜色==> 下划线
            indicatorSize: TabBarIndicatorSize.label, // 指示器长度
            tabs: [
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListViewDemo(),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
