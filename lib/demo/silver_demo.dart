import 'package:flutter/material.dart';
import 'package:learn_widget/model/post.dart';

class SliverDemo extends StatelessWidget {
  const SliverDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: Text("Sliver"),
            // pinned: true,
            floating: true,
            expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Flutter Sliver".toLowerCase(),
                style: TextStyle(
                    fontSize: 15.0,
                    letterSpacing: 3.0,
                    fontWeight: FontWeight.w400),
              ),
              background: Image.network(
                  'https://hbimg.huabanimg.com/dd4bae9873868bdb7d6cea2ef168ac3fe6825b803437d-K3XwyG_fw658/format/webp',
                  fit: BoxFit.fitWidth),
            ),
          ),
          //在安全区域内显示
          SliverSafeArea(
            // 添加padding
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverGridDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  const SliverGridDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
          );
        },
        childCount: posts.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}
