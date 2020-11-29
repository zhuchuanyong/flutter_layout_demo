import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  SwitchDemo({Key key}) : super(key: key);

  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;

  void _handRadioValueChanged(bool value) {
    debugPrint("value $value");
    setState(() {
      _switchItemA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RadioGroupValue: $_switchItemA'),
            SizedBox(height: 32.0),
            SwitchListTile(
              value: _switchItemA,
              onChanged: _handRadioValueChanged,
              title: Text('Switch'),
              subtitle: Text('subtitle'),
              secondary: Icon(Icons.filter_1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _switchItemA ? '😁' : '😐',
                  style: TextStyle(fontSize: 32.0),
                ),
                Switch(
                  value: _switchItemA,
                  onChanged: _handRadioValueChanged,
                ),
                // Switch(
                //   value: false,
                //   onChanged: _handRadioValueChanged,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
