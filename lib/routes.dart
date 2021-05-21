import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:hao_ke_zu_fang/pages/home/index.dart';
import 'package:hao_ke_zu_fang/pages/login.dart';
import 'package:hao_ke_zu_fang/pages/not_found.dart';
import 'package:hao_ke_zu_fang/pages/register.dart';

class Routes {
  static final String home = '/';
  static final String login = '/login';
  static final String register = '/register';

  static void configureRoutes(FluroRouter router) {
    // 首页
    router.define(home, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return HomePage();
    }));
    //
    router.define(login, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return LoginPage();
    }));
    router.define(register, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return RegisterPage();
    }));
    // 404
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('route was not found!');
      return NotFoundPage();
    });
  }
}
