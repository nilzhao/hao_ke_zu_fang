import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/config/style_vars.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_index/data.dart';

import 'recommand_item.dart';

class TabIndexRecommand extends StatelessWidget {
  final List<IndexRecommendItem> data;

  const TabIndexRecommand({Key key, this.data = indexRecommendList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(QSpace.sm),
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('房屋推荐', style: TextStyle(fontWeight: FontWeight.w600)),
              TextButton(
                onPressed: () {
                  print('推荐: 更多');
                },
                child: Text(
                  '更多',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Wrap(
            spacing: QSpace.sm, // gap between adjacent chips
            runSpacing: QSpace.sm, // gap between lines
            children: data
                .map((recommand) => IndexRecommendItemWiget(
                      recommand: recommand,
                      spacing: QSpace.sm,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
