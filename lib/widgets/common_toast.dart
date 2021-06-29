import 'package:fluttertoast/fluttertoast.dart';

class CommonToast {
  static showToast(String msg, {ToastGravity gravity = ToastGravity.CENTER}) {
    Fluttertoast.showToast(msg: msg, gravity: gravity);
  }
}
