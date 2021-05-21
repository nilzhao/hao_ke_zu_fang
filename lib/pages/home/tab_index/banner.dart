import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/widgets/common_swiper.dart';

const _defaultBannerImages = [
  'https://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg',
  'https://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg',
  'https://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg',
];

const _imageWidth = 750.0;
const _imageHeight = 424.0;

class TabIndexBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonSwiper(
      images: _defaultBannerImages,
      imageWidth: _imageWidth,
      imageHeight: _imageHeight,
    );
  }
}
