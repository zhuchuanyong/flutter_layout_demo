import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('button按钮'),
      ),
      body: Column(
        children: <Widget>[
          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('MaterialButton 不推荐'),
          ),
          RaisedButton(
            child: new Text('RaisedButton 有阴影圆角'),
            onPressed: () {},
          ),
          RaisedButton.icon(
            icon: Icon(Icons.volume_up),
            label: new Text('RaisedButton.icon 图标和文字'),
            onPressed: () {},
          ),
          FlatButton(
            child: new Text('FlatButton 没阴影,没圆角,没边框,透明'),
            onPressed: () {},
          ),
          OutlineButton(
            child: new Text('没阴影,有圆角,有边框'),
            onPressed: () {},
          ),
          Row(
            children: <Widget>[
              Text('只有一个Icon的button'),
              IconButton(
                icon: new Icon(Icons.volume_up),
                tooltip: 'Increase volume by 10%',
                onPressed: () {
                  // ...
                },
              ),
              CloseButton(),
              BackButton()
            ],
          ),
          ButtonBar(
            children: <Widget>[
              new CloseButton(),
              new BackButton(),
            ],
          )
        ],
      ),
    );
  }
}
