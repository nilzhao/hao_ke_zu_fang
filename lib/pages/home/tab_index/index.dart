import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_index/banner.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TabIndexBanner(),
      ],
    );
  }
}
