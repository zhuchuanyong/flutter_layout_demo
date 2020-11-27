import 'package:flutter/material.dart';

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
              Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            ],
          ),
          drawer: DrawerDemo()),
    );
  }
}

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   child: Text("Header".toLowerCase()),
          //   decoration: BoxDecoration(color: Colors.grey[100]),
          // ),
          UserAccountsDrawerHeader(
            accountName:
                Text('朱传永', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('1251637837@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://hbimg.huabanimg.com/cc59235f0ceefd3a4327672b57500501c0f7502129f0e-2F9AAs_fw658/format/webp'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage(
                    'https://hbimg.huabanimg.com/d338b317a1799e3a97b3ee558ede79709d0f26e465a38-Abk1e8_fw658/format/webp'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),
              ),
            ),
          ),
          ListTile(
              title: Text("Message", textAlign: TextAlign.right),
              trailing: Icon(Icons.message, color: Colors.black12, size: 22.0)),
          ListTile(
              title: Text("Favorite", textAlign: TextAlign.right),
              trailing:
                  Icon(Icons.favorite, color: Colors.black12, size: 22.0)),
          ListTile(
              title: Text("Settings", textAlign: TextAlign.right),
              trailing:
                  Icon(Icons.settings, color: Colors.black12, size: 22.0)),
        ],
      ),
    );
  }
}
