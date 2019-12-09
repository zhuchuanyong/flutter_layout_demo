import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/pages/expansionPanelPage.dart';
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
              ExpansionPanelPage(),
              // ExpansionList(title: 'hhs'),
              ExpansionList(
                title: 'My demo',
                routeName: routerListOne,
              ),
              ExpansionList(
                title: 'GSY demo',
                routeName: routerListtwo,
              ),
            ],
          ),
        ));
  }
}

class ExpansionList extends StatefulWidget {
  final String title;
  List listdata = [];
  List routeName = [];


  ExpansionList({Key key, this.title, this.listdata, this.routeName})
      : super(key: key);

  @override
  _ExpansionListState createState() => _ExpansionListState();
}

class _ExpansionListState extends State<ExpansionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
        title: Text(widget.title),
        leading: Icon(Icons.ac_unit),
        backgroundColor: Colors.white12,
        children: widget.routeName.map((item) {
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(item);
            },
            child: Card(
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 50,
                child: Text(item),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
