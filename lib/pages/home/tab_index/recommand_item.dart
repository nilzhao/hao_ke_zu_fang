import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/config/space.dart';
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
        ),
        padding: EdgeInsets.all(space_sm),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  recommand.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(recommand.desc,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
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
