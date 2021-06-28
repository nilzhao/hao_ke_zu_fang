import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_search/room_item.dart';

import 'data.dart';

class RoomList extends StatelessWidget {
  final List<RoomListItemData> roomList;

  const RoomList({Key? key, this.roomList = defaultRoomList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: roomList.map((roomInfo) => RoomItemWiget(roomInfo)).toList(),
      ),
    );
  }
}
