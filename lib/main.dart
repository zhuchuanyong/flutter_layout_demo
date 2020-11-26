import 'package:flutter/material.dart';
import 'package:learn_widget/model/post.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(posts[index].author,
              style: Theme.of(context).textTheme.subtitle1),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text("Number one"),
        ),
        body: ListView.builder(
          itemBuilder: _listItemBuilder,
          itemCount: posts.length,
        ));
  }
}

class hello extends StatelessWidget {
  const hello({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello 2",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.yellow),
      ),
    );
  }
}
