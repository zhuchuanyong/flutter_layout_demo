import 'package:flutter/material.dart';

enum Action { Ok, Cancel }

class AlertDialogDemo extends StatefulWidget {
  AlertDialogDemo({Key key}) : super(key: key);

  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = "Nothing";

  Future _openAlertDialog() async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Dialog"),
          content: Text("你确定"),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.pop(context, Action.Cancel);
              },
              child: Text(
                "Cancel",
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context, Action.Ok);
              },
              child: Text("Ok"),
            )
          ],
        );
      },
    );

    switch (action) {
      case Action.Ok:
        setState(
          () {
            _choice = "ok";
          },
        );
        break;
      case Action.Cancel:
        setState(
          () {
            _choice = "Cancel";
          },
        );
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('your $_choice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: _openAlertDialog,
                  child: Text("Open AlertDialog"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
