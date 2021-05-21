import 'package:flutter/material.dart';

import '../routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisibile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(30),
        child: ListView(
          children: [
            TextField(
                decoration:
                    InputDecoration(labelText: '用户名', hintText: '请输入用户名')),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              obscureText: passwordVisibile,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                suffixIcon: IconButton(
                    icon: Icon(passwordVisibile
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      this.setState(() {
                        passwordVisibile = !passwordVisibile;
                      });
                    }),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              child: Text('登录'),
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () {
                print('登录');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('还没账号?'),
                TextButton(
                    child: Text('去注册~', style: TextStyle(color: Colors.green)),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.register);
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
