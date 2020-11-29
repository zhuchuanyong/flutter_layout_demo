import 'package:flutter/material.dart';

import 'demo/Navigator_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/form_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/listView_demo.dart';
import 'demo/material_components.dart';
import 'demo/silver_demo.dart';
import 'demo/view_demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      // home: Home(),
      // home: SliverDemo(),
      initialRoute: "/",
      routes: {
        // "/": (context) => NavigatorDemo(),
        "/": (context) => MaterialComponents(),
        "/about": (context) => RoutePage(title: "About"),
        "/form": (context) => FormDemo(),
        "/materialComponents": (context) => MaterialComponents(),
      },
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            SliverDemo(),
            // ViewDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
