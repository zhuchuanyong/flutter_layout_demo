import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;

  void _handRadioValueChanged(int value) {
    debugPrint("value $value");
    setState(() {
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RadioGroupValue: $_radioGroupA'),
            SizedBox(height: 32.0),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handRadioValueChanged,
              title: Text('RadioA'),
              subtitle: Text('subtitle'),
              secondary: Icon(Icons.filter_1),
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handRadioValueChanged,
              title: Text('RadioB'),
              subtitle: Text('subtitle'),
              secondary: Icon(Icons.filter_1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _radioGroupA,
                  onChanged: _handRadioValueChanged,
                ),
                Radio(
                  value: 1,
                  groupValue: _radioGroupA,
                  onChanged: _handRadioValueChanged,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
