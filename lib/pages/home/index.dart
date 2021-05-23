import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_index/index.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_mine/index.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_info/index.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_search/index.dart';

const List<BottomNavigationBarItem> _barItems = [
  BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '首页'),
  BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: '找房'),
  BottomNavigationBarItem(icon: Icon(Icons.info_outline_rounded), label: '资讯'),
  BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_outlined), label: '我的'),
];

const List<Widget> _listView = [
  TabIndex(),
  TabSearch(),
  TabInfo(),
  TabMine(),
];

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  _onTap(int index) {
    this.setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listView[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: _barItems,
        onTap: _onTap,
      ),
    );
  }
}
