import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/config/style_vars.dart';
import 'package:hao_ke_zu_fang/widgets/common_image.dart';

import 'data.dart';

class InfoItemWiget extends StatelessWidget {
  final InfoItem info;
  const InfoItemWiget(
    this.info, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.all(QSpace.space_sm),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(info.navigateUrl);
        },
        child: Row(
          children: [
            CommonImage(info.imageUrl, width: 120.0, height: 90.0),
            Padding(padding: EdgeInsets.only(left: QSpace.space_sm)),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(info.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(info.source,
                          style: TextStyle(fontSize: QFont.size_sm)),
                      Text(info.time,
                          style: TextStyle(fontSize: QFont.size_sm)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
