import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:hao_ke_zu_fang/pages/home/index.dart';
import 'package:hao_ke_zu_fang/pages/login.dart';
import 'package:hao_ke_zu_fang/pages/not_found.dart';
import 'package:hao_ke_zu_fang/pages/register.dart';
import 'package:hao_ke_zu_fang/pages/room_manage/index.dart';
import 'package:hao_ke_zu_fang/pages/search/index.dart';
import 'package:hao_ke_zu_fang/pages/setting.dart';

class Routes {
  static final String home = '/';
  static final String login = '/login';
  static final String register = '/register';
  static final String setting = '/setting';
  static final String search = '/search';
  static final String roomManager = '/roomManager';

  static void configureRoutes(FluroRouter router) {
    // 首页
    router.define(home, handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return HomePage();
    }));
    // 登录
    router.define(login, handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return LoginPage();
    }));
    // 注册
    router.define(register, handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return RegisterPage();
    }));
    // 设置
    router.define(setting, handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return SettingPage();
    }));
    // 搜索
    router.define(search, handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return SearchPage();
    }));
    // 房屋管理
    router.define(roomManager, handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return RoomManagePage();
    }));

    // 404
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print('route was not found!');
      return NotFoundPage();
    });
  }
}
