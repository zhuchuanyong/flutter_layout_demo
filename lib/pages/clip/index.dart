import 'package:flutter/material.dart';

/// 圆角效果处理实现
class ClipDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("ClipDemoPage"),
      ),
      body: new Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("BoxDecoration 圆角"),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/meizi.jpg'),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
            ),
            SizedBox(
              height: 10,
            ),
            new Text("BoxDecoration 圆角对 child"),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: Image.asset(
                'assets/images/meizi.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            new Text("ClipRRect 圆角对 child"),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(
                'assets/images/meizi.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            )
          ],
        ),
        // child: new Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     new Text("BoxDecoration 圆角"),
        //     new Container(
        //       width: 100,
        //       height: 100,
        //       decoration: BoxDecoration(
        //           color: Colors.red,
        //           image: DecorationImage(
        //             fit: BoxFit.cover,
        //             image: AssetImage("static/gsy_cat.png"),
        //           ),
        //           borderRadius: BorderRadius.all(Radius.circular(5.0))),
        //     ),
        //     new SizedBox(
        //       height: 10,
        //     ),
        //     new Text("BoxDecoration 圆角对 child"),
        //     new Container(
        //       width: 100,
        //       height: 100,
        //       decoration: BoxDecoration(
        //           color: Colors.red,
        //           borderRadius: BorderRadius.all(Radius.circular(5.0))),
        //       child: new Image.asset(
        //         "static/gsy_cat.png",
        //         fit: BoxFit.cover,
        //         width: 100,
        //         height: 100,
        //       ),
        //     ),
        //     new SizedBox(
        //       height: 10,
        //     ),
        //     new Text("ClipRRect 圆角对 child"),
        //     new ClipRRect(
        //       borderRadius: BorderRadius.all(Radius.circular(5.0)),
        //       child: new Image.asset(
        //         "static/gsy_cat.png",
        //         fit: BoxFit.cover,
        //         width: 100,
        //         height: 100,
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
