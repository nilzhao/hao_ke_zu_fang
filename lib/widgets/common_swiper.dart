import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:hao_ke_zu_fang/widgets/common_image.dart';

class CommonSwiper extends StatelessWidget {
  final List<String> images;
  final double imageWidth;
  final double imageHeight;

  CommonSwiper({Key key, this.images, this.imageWidth, this.imageHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width / imageWidth * imageHeight,
        child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return CommonImage(
              url: images[index],
              fit: BoxFit.fill,
            );
          },
          itemCount: images.length,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
        ));
  }
}
