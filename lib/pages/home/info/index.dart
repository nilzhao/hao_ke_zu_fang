import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/config/style_vars.dart';
import 'package:hao_ke_zu_fang/pages/home/info/data.dart';

import 'item.dart';

class Info extends StatelessWidget {
  final bool titleVisible;
  final List<InfoItem> data;
  const Info({Key key, this.titleVisible = false, this.data = infoData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (titleVisible)
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(QSpace.sm),
              child: Text(
                '最新资讯',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          Column(
            children: data.map((info) => InfoItemWiget(info)).toList(),
          )
        ],
      ),
    );
  }
}
