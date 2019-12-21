import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Widget'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextFormField(
              onTap: () {},
              decoration: InputDecoration(
                  labelText: '姓名', icon: Icon(Icons.person), hintText: '请输入姓名'),
            ),
            TextFormField(
              onTap: () {},
              decoration: InputDecoration(
                labelText: '密码',
                icon: Icon(Icons.person),
                hintText: '请输入密码',
              ),
              obscureText: true, // 隐藏输入内容
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.calendar_today),
                hintText: 'Enter your date of birth',
                labelText: 'birth',
              ),
              keyboardType: TextInputType.datetime,
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.phone),
                hintText: '手机号',
                labelText: 'Phone',
              ),
              keyboardType: TextInputType.phone,
              inputFormatters: [
                WhitelistingTextInputFormatter.digitsOnly, // 只允许输入数字
              ],
            ),
            TextFormField(
              onTap: () {},
              decoration: InputDecoration(
                labelText: '邮件',
                icon: Icon(Icons.person),
                hintText: '自动获取焦点',
              ),
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              onTap: () {},
              maxLines: 3,
              decoration: InputDecoration(
                labelText: '多行输入',
                icon: Icon(Icons.person),
                hintText: '',
              ),
            ),
            TextFormField(
              onTap: () {},
              decoration: InputDecoration(
                labelText: '只能输入6个字符超出不禁止输入',
                icon: Icon(Icons.person),
                hintText: '',
              ),
              maxLength: 6,
              maxLengthEnforced: false,
            ),
          ],
        ),
      ),
    );
  }
}
