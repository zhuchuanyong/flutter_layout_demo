import 'package:flutter/material.dart';

class CloumnPage extends StatelessWidget {
  const CloumnPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cloumn'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('改革春风吹满地'),
          Text('中国人民真生气'),
        ],
      ),
    );

    //  Column(
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: <Widget>[Text('改革春风吹满地'), Text('中国人民真生气')],
    // );
  }
}
