import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_search/room_list.dart';
import 'package:hao_ke_zu_fang/widgets/common_floating_button.dart';

class RoomManagePage extends StatelessWidget {
  const RoomManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CommonFloatingButton(
          text: '发布房源',
          onTap: (BuildContext context) {
            Navigator.of(context).pushNamed('roomAdd');
          },
        ),
        appBar: AppBar(
          title: Text('房屋管理'),
          bottom: TabBar(tabs: [
            Tab(text: '空置'),
            Tab(text: '已租'),
          ]),
        ),
        body: TabBarView(
          children: [
            RoomList(),
            RoomList(),
          ],
        ),
      ),
    );
  }
}
