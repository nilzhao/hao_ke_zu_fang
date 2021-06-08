import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('您访问的页面不存在!'),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(1);
              },
              child: Text('返回'),
            ),
          ],
        ),
      ),
    );
  }
}
