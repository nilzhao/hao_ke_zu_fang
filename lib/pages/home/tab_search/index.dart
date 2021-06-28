import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_search/room_list.dart';
import 'package:hao_ke_zu_fang/widgets/search_bar.dart';

import '../../../routes.dart';

class TabSearch extends StatelessWidget {
  const TabSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
            showLocation: true,
            showMap: true,
            onSearchTap: (BuildContext context) {
              Navigator.of(context).pushNamed(Routes.search);
            }),
      ),
      body: ListView(
        children: [
          Text('过滤'),
          RoomList(),
        ],
      ),
    );
  }
}
