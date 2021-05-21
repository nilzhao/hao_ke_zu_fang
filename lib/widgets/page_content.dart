import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/routes.dart';

class PageContent extends StatelessWidget {
  final String name;
  const PageContent({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name),
        ),
        body: ListView(children: [
          TextButton(
            child: Text('首页'),
            onPressed: () {
              Navigator.pushNamed(context, Routes.home);
            },
          ),
          TextButton(
            child: Text('登录'),
            onPressed: () {
              Navigator.pushNamed(context, Routes.login);
            },
          ),
        ]));
  }
}
