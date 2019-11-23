import 'package:flutter/material.dart';

class FlexPage extends StatelessWidget {
  const FlexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flex布局'),
      ),
      body: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text('3333'),
          ),
          Expanded(
            flex: 2,
            child: Text('7888'),
          ),
        ],
      ),
    );
  }
}
