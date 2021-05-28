import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/config/style_vars.dart';
import 'package:hao_ke_zu_fang/widgets/common_image.dart';

import 'data.dart';

class IndexRecommendItemWiget extends StatelessWidget {
  final double spacing;
  final IndexRecommendItem recommand;
  const IndexRecommendItemWiget({Key key, this.spacing, this.recommand})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(recommand.route);
      },
      child: Container(
        width: (MediaQuery.of(context).size.width - spacing * 3) / 2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.all(Radius.circular(QBorderRadius.primary)),
        ),
        padding: EdgeInsets.all(QSpace.sm),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  recommand.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(recommand.desc,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            CommonImage(
              recommand.imageUrl,
              width: 55.0,
            ),
          ],
        ),
      ),
    );
  }
}
