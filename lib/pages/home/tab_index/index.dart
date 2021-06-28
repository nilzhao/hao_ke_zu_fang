import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/pages/home/info/data.dart';
import 'package:hao_ke_zu_fang/pages/home/info/index.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_index/banner.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_index/nav.dart';
import 'package:hao_ke_zu_fang/routes.dart';
import 'package:hao_ke_zu_fang/widgets/search_bar.dart';

import 'recommand.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          showLocation: true,
          showMap: true,
          onSearchTap: (BuildContext context) {
            Navigator.of(context).pushNamed(Routes.search);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          TabIndexBanner(),
          Padding(padding: EdgeInsets.all(10)),
          TabIndexNav(),
          Padding(padding: EdgeInsets.all(10)),
          TabIndexRecommand(),
          Info(
            titleVisible: true,
            data: infoData.getRange(0, 3).toList(),
          ),
        ],
      ),
    );
  }
}
