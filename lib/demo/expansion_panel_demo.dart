/*
 * @Author: zhuchuanyong
 * @Date: 2020-12-05 01:12:01
 * @LastEditors: zhuchuanyong
 * @LastEditTime: 2020-12-05 02:03:09
 * @FilePath: \lib\demo\expansion_panel_demo.dart
 */
import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;
  ExpansionPanelItem({this.body, this.headerText, this.isExpanded});
}

class ExpansionPanelDemo extends StatefulWidget {
  ExpansionPanelDemo({Key key}) : super(key: key);

  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> _expansionPanelItems;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('content a'),
        ),
        headerText: "PA",
        isExpanded: false,
      ),
      ExpansionPanelItem(
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('content B'),
        ),
        headerText: "PB",
        isExpanded: false,
      ),
      ExpansionPanelItem(
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('content C'),
        ),
        headerText: "PC",
        isExpanded: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded) {
                setState(() {
                  _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
                });
              },
              children: _expansionPanelItems.map(
                (ExpansionPanelItem item) {
                  return ExpansionPanel(
                    body: item.body,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          item.headerText,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      );
                    },
                    isExpanded: item.isExpanded,
                  );
                },
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}
