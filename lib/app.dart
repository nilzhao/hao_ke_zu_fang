import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      title: '好客租房',
      theme: ThemeData(primaryColor: Colors.green),
      onGenerateRoute: router.generator,
    );
  }
}
