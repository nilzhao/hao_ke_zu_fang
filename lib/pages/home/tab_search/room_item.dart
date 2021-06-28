import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/config/style_vars.dart';
import 'package:hao_ke_zu_fang/widgets/common_image.dart';
import 'package:hao_ke_zu_fang/widgets/common_tag.dart';

import 'data.dart';

const double imgWidth = 780.0;
const double imgHeight = 439.0;
const double imgShowWidth = 200.0;
const double imgShowHeight = imgShowWidth * imgHeight / imgWidth;

class RoomItemWiget extends StatelessWidget {
  final RoomListItemData roomInfo;

  const RoomItemWiget(
    this.roomInfo, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imgShowHeight,
      padding: EdgeInsets.only(
        left: QSpace.sm,
        right: QSpace.sm,
        bottom: QSpace.sm,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CommonImage(
            roomInfo.imageUrl,
            width: imgShowWidth,
            height: imgShowHeight,
          ),
          Padding(
            padding: EdgeInsets.only(right: QSpace.sm),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      roomInfo.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      bottom: QSpace.xs,
                    )),
                    Text(
                      roomInfo.subTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      bottom: QSpace.xs,
                    )),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      children: roomInfo.tags
                          .map((tag) => CommonTagWiget.formText(tag))
                          .toList(),
                    ),
                    // Text(roomInfo.title),
                    Row(
                      children: [
                        Text(
                          "${roomInfo.price}  元/月",
                          style: TextStyle(
                            fontSize: QFont.size_md,
                            fontWeight: QFont.w_bold_2,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
