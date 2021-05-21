import 'package:flutter/material.dart';

class TabIndexNav extends StatelessWidget {
  const TabIndexNav({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.house_outlined),
              Text('整租'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.house_outlined),
              Text('整租'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.house_outlined),
              Text('整租'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.house_outlined),
              Text('整租'),
            ],
          ),
        ],
      ),
    );
  }
}
