import 'package:flutter/material.dart';

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
