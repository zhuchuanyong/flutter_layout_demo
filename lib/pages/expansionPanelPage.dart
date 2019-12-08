import 'package:flutter/material.dart';

class ExpansionPanelPage extends StatefulWidget {
  ExpansionPanelPage({Key key}) : super(key: key);

  @override
  _ExpansionPanelPageState createState() => _ExpansionPanelPageState();
}

class _ExpansionPanelPageState extends State<ExpansionPanelPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
        title: Text('demo'),
        // leading: Icon(Icons.ac_unit),
        backgroundColor: Colors.white12,
        children: <Widget>[
          ListTile(
            title: Text('12233'),
            subtitle: Text('12345444'),
          ),
          ListTile(
            title: Text('12233'),
            subtitle: Text('12345444'),
          )
        ],
      ),
    );
  }
}
