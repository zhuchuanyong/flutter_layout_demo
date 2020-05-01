import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  final String title = "侧滑菜单Drawer";
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  //  定义key 用于手动打开Drawer
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: RaisedButton(
          child: Text(
            '点我，弹出Drawer',
          ),
          onPressed: () {
            // 手动打开
            _scaffoldKey.currentState.openDrawer();

            //  在Drawer 组件里可使用这种
            //  Scaffold.of(context).openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('hahha'),
            ),
            ListTile(
              title: Text("菜单1"),
            ),
            ListTile(
              title: Text("菜单2"),
            ),
          ],
        ),
      ),
    );
  }
}
