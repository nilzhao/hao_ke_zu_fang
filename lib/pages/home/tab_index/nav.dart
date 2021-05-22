import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/pages/home/tab_index/data.dart';
import 'package:hao_ke_zu_fang/widgets/common_image.dart';

class TabIndexNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: indexNavList
            .map((navItem) => InkWell(
                  onTap: () {
                    navItem.onTap(context);
                  },
                  child: Column(
                    children: [
                      CommonImage(navItem.imageUrl, width: 45),
                      Text(navItem.label,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
