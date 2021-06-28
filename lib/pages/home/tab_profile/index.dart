import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/pages/home/info/index.dart';

import 'advertisement.dart';
import 'function_button.dart';
import 'header.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('settings');
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Header(),
          FunctionButton(),
          Advertisement(),
          Info(titleVisible: true),
        ],
      ),
    );
  }
}
