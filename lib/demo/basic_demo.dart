import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  const BasicDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: NetworkImage(
              'https://hbimg.huabanimg.com/84892c3a7f81b6e1d71e3b7dffb29881dc4438e586f5c-UxhXR7_fw658/format/webp'),
        ),
      ),
      // color: Colors.grey[100],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 3.0,
              //     style: BorderStyle.solid,
              //   ),
              //   bottom: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 3.0,
              //     style: BorderStyle.solid,
              //   ),
              // ),

              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ), //边框
              borderRadius: BorderRadius.circular(16.0), // 圆角
              boxShadow: [
                BoxShadow(
                    offset: Offset(0.0, 16.0),
                    color: Color.fromRGBO(16, 20, 188, 1.0),
                    blurRadius: 25.0,
                    spreadRadius: -9.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({Key key}) : super(key: key);
  final String _author = "中国人民 ";
  final String _title = "社会主义核心价值观";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
              text: "《$_title》--",
              style: TextStyle(color: Colors.black, fontSize: 18.0),
              children: [
                TextSpan(
                  text: " $_author",
                  style: TextStyle(color: Colors.red, fontSize: 16.0),
                )
              ]),
        ),
        Text(
          '富强、民主、文明、和谐、自由、平等、公正、法治，爱国、敬业、诚信、友善',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
