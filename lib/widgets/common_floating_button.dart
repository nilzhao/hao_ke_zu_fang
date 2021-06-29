import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/config/style_vars.dart';

class CommonFloatingButton extends StatelessWidget {
  final void Function(BuildContext context)? onTap;
  final String text;
  const CommonFloatingButton({Key? key, this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!(context);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(QBorderRadius.primary),
        ),
        height: 40.0,
        margin: EdgeInsets.all(QSpace.md),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: QFont.size_lg,
            ),
          ),
        ),
      ),
    );
  }
}
