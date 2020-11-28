import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  const BasicDemo({Key key}) : super(key: key);

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
