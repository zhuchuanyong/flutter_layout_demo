import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/pages/routers.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ExpansionList(
                title: 'My demo',
                routeInfo: routerListOneName,
              ),
              ExpansionList(
                title: 'GSY demo',
                routeInfo: routerListtwo,
              ),
            ],
          ),
        ));
  }
}

// 路由list 列表
class ExpansionList extends StatefulWidget {
  final String title;
  List routeInfo = [];

  ExpansionList({Key key, this.title, this.routeInfo}) : super(key: key);

  @override
  _ExpansionListState createState() => _ExpansionListState();
}

class _ExpansionListState extends State<ExpansionList> {
  List nameList = [];
  List pathList = [];
  @override
  void initState() {
    // TODO: implement initState
    _setRouteTitlePath();
    super.initState();
  }

  _setRouteTitlePath() {
    var nameTitleList = [];
    var pathNameList = [];
    widget.routeInfo.forEach((item) {
      nameTitleList.add(item['name']);
      pathNameList.add(item['pathName']);
    });
    setState(() {
      nameList = nameTitleList;
      pathList = pathNameList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
        title: Text(widget.title),
        leading: Icon(Icons.ac_unit),
        backgroundColor: Colors.white12,
        children: pathList.asMap().keys.map((item) {
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(pathList[item]);
            },
            child: Card(
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 50,
                child: Text(nameList[item]),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
