import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_search/room_list.dart';

class TabSearch extends StatelessWidget {
  const TabSearch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('找房'),
      ),
      body: ListView(
        children: [
          Text('搜素'),
          Text('过滤'),
          RoomList(),
        ],
      ),
    );
  }
}
