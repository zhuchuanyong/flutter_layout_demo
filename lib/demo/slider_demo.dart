import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  SliderDemo({Key key}) : super(key: key);

  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderItemA = 0.0;

  void _handRadioValueChanged(double value) {
    debugPrint("value $value");
    setState(() {
      _sliderItemA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RadioGroupValue: $_sliderItemA'),
            SizedBox(height: 32.0),
            // SwitchListTile(
            //   value: _sliderItemA,
            //   onChanged: _handRadioValueChanged,
            //   title: Text('Switch'),
            //   subtitle: Text('subtitle'),
            //   secondary: Icon(Icons.filter_1),
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                  min: 0,
                  max: 10,
                  value: _sliderItemA,
                  onChanged: _handRadioValueChanged,
                ),
                SizedBox(height: 32.0),
                Slider(
                    value: _sliderItemA,
                    onChanged: _handRadioValueChanged,
                    min: 0,
                    max: 10,
                    divisions: 10,
                    label: '${_sliderItemA.toInt()}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
