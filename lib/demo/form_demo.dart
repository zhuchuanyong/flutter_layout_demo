import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterForm()
              // TextFiledDemo(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFiledDemo extends StatefulWidget {
  TextFiledDemo({Key key}) : super(key: key);

  @override
  _TextFiledDemoState createState() => _TextFiledDemoState();
}

class _TextFiledDemoState extends State<TextFiledDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    textEditingController.text = "hi";
    textEditingController.addListener(() {
      debugPrint("input: aa" + textEditingController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onChanged: (value) {
        debugPrint('input $value');
      },
      onSubmitted: (value) {
        debugPrint('onSubmitted $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: "Title",
        hintText: "请输入",
        filled: true,
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerKey = GlobalKey<FormState>();
  String username, password;

  String validatorUsername(value) {
    if (value.isEmpty) {
      return '用户名必填';
    }
    return null;
  }

  String validatorPwd(value) {
    if (value.isEmpty) {
      return '密码必填';
    }
    return null;
  }

  void submitRegisterForm() {
    registerKey.currentState.save();
    registerKey.currentState.validate();
    debugPrint('username: ' + username);
    debugPrint('pwb: ' + password);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'UserName', hintText: '77'),
            onSaved: (value) {
              username = value;
            },
            validator: validatorUsername,
          ),
          TextFormField(
            obscureText: true,
            validator: validatorPwd,
            decoration: InputDecoration(labelText: 'Password', hintText: ''),
            onSaved: (value) {
              password = value;
            },
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                "Register",
                style: TextStyle(color: Colors.white),
              ),
              elevation: 0.0,
              onPressed: () {
                submitRegisterForm();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ThemoDemo extends StatelessWidget {
  const ThemoDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Theme.of(context).primaryColor);
  }
}
