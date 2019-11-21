import 'package:flutter/material.dart';

/// 在 Flutter 中有很多内置的 Controller
/// 大部分内置控件都可以通过 Controller 设置和获取控件参数
/// 比如 TextField 的 TextEditingController
/// 比如 ListView  的 ScrollController
/// 一般想对控件做 OOXX 的事情，先找个 Controller 就对了。
///
class ControllerDemoPage extends StatefulWidget {
  ControllerDemoPage({Key key}) : super(key: key);

  @override
  _ControllerDemoPageState createState() => _ControllerDemoPageState();
}

class _ControllerDemoPageState extends State<ControllerDemoPage> {
  final TextEditingController username = new TextEditingController(text: "狗胜子");
  final TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controller'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: username,
            decoration: new InputDecoration(
              labelText: '用户名',
              prefixIcon: Icon(Icons.person),
              hintText: '请输入用户名', // 提示值
            ),
            maxLength: 6,
            onChanged: (v) {
              print(v);
            },
          ),
          TextField(
            controller: password,
            decoration: new InputDecoration(
              labelText: '密码',
              prefixIcon: Icon(Icons.lock),
              hintText: '请输入密码',
            ),
            // 设置键盘类型
            keyboardType: TextInputType.number,
            obscureText: true,
          ),
          Text(username.text)
        ],
      ),
    );
  }
}
// class ControllerDemoPage extends StatelessWidget {
//   // 文本框内容
//   final TextEditingController controller =
//       new TextEditingController(text: "init Text");
//   final TextEditingController controller2 =
//       new TextEditingController(text: "init Text");

//   @override
//   Widget build(BuildContext context) {

//   }
// }
