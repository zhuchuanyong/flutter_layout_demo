import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  BottomSheetDemo({Key key}) : super(key: key);

  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState
        .showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 98.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.pause_circle_outline),
              SizedBox(width: 16.0),
              Text("01:30 / 03:30")
            ],
          ),
        ),
      );
    });
  }

  _openModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200.0,
          child: Column(
            children: [
              ListTile(
                  title: Text("option A"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(title: Text("option B")),
              ListTile(title: Text("option C")),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: _openBottomSheet,
                  child: Text("Open BottomSheet"),
                ),
                RaisedButton(
                  onPressed: _openModalBottomSheet,
                  child: Text("Model BottomSheet"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
