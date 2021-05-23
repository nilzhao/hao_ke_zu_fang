import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/pages/home/info/index.dart';

class TabInfo extends StatefulWidget {
  const TabInfo({Key key}) : super(key: key);

  @override
  _TabInfoState createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('资讯'),
      ),
      body: ListView(
        children: [
          Info(titleVisible: false),
        ],
      ),
    );
  }
}
