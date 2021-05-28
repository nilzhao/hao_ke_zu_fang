import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/config/style_vars.dart';

const int _bgColorNum = 50;

class CommonTagWiget extends StatelessWidget {
  final String text;
  final Color color;
  final Color backgroundColor;

  const CommonTagWiget.origin(
    this.text, {
    Key key,
    this.color,
    this.backgroundColor,
  }) : super(key: key);

  factory CommonTagWiget.formText(String text) {
    switch (text) {
      case '近地铁':
        return CommonTagWiget.origin(
          text,
          color: Colors.red,
          backgroundColor: Colors.red[_bgColorNum],
        );
      case '集中供暖':
        return CommonTagWiget.origin(
          text,
          color: Colors.blue,
          backgroundColor: Colors.blue[_bgColorNum],
        );
      case '新上':
        return CommonTagWiget.origin(
          text,
          color: Colors.orange,
          backgroundColor: Colors.orange[_bgColorNum],
        );
      case '随时看房':
        return CommonTagWiget.origin(
          text,
          color: Colors.deepPurple,
          backgroundColor: Colors.deepPurple[_bgColorNum],
        );
      default:
        return CommonTagWiget.origin(
          text,
          color: Colors.green,
          backgroundColor: Colors.green[_bgColorNum],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(QSpace.xss),
      margin: EdgeInsets.only(right: QSpace.xs),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(QBorderRadius.primary),
        color: backgroundColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: QFont.size_xs,
        ),
      ),
    );
  }
}
