import 'package:flutter/material.dart';

import '../routes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册'),
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
                decoration:
                    InputDecoration(labelText: '密码', hintText: '请输入密码')),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
                decoration:
                    InputDecoration(labelText: '确认密码', hintText: '请输入确认密码')),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              child: Text('注册'),
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () {
                print('注册');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('已有账号?'),
                TextButton(
                    child: Text('去登录~', style: TextStyle(color: Colors.green)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(Routes.login);
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
