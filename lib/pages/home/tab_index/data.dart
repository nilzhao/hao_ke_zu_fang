import 'package:flutter/material.dart';

// 导航
class IndexNavItem {
  final String label;
  final String imageUrl;
  final Function(BuildContext contenxt) onTap;

  const IndexNavItem(this.label, this.imageUrl, this.onTap);
}

List<IndexNavItem> indexNavList = [
  IndexNavItem('整租', 'static/images/home_index_navigator_total.png', (context) {
    // Navigator.of(context).pushNamed(Routes.login);
  }),
  IndexNavItem('合租', 'static/images/home_index_navigator_share.png', (context) {
    // Navigator.of(context).pushNamed(Routes.login);
  }),
  IndexNavItem('地图找房', 'static/images/home_index_navigator_map.png', (context) {
    // Navigator.of(context).pushNamed(Routes.login);
  }),
  IndexNavItem('去出租', 'static/images/home_index_navigator_rent.png', (context) {
    // Navigator.of(context).pushNamed(Routes.login);
  }),
];

// 推荐
class IndexRecommendItem {
  final String title;
  final String desc;
  final String imageUrl;
  final String route;

  const IndexRecommendItem(this.title, this.desc, this.imageUrl, this.route);
}

const List<IndexRecommendItem> indexRecommendList = [
  const IndexRecommendItem(
      '家住回龙观', '归属的感觉', 'static/images/home_index_recommend_1.png', 'login'),
  const IndexRecommendItem(
      '宜居四五环', '大都市生活', 'static/images/home_index_recommend_2.png', 'login'),
  const IndexRecommendItem(
      '喧嚣三里屯', '繁华的背后', 'static/images/home_index_recommend_3.png', 'login'),
  const IndexRecommendItem(
      '比邻十号线', '地铁心连心', 'static/images/home_index_recommend_4.png', 'login'),
];
