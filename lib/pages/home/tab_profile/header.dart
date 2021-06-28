import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/config/style_vars.dart';
import 'package:hao_ke_zu_fang/routes.dart';

const loginStyle = TextStyle(fontSize: QFont.size_xl, color: Colors.white);

class _Avatar extends StatelessWidget {
  final String url;

  const _Avatar(this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      width: 65.0,
      margin: EdgeInsets.only(
        right: QSpace.sm,
      ),
      child: CircleAvatar(
        backgroundImage: NetworkImage(url),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final bool _isLogin = true;
  const Header({Key? key}) : super(key: key);

  Widget _noLoginPageHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(QSpace.md),
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      child: Row(
        children: [
          _Avatar(
              'https://tva1.sinaimg.cn/large/006y8mN6ly1g6tbgbqv2nj30i20i2wen.jpg'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(Routes.login);
                    },
                    child: Text('注册', style: loginStyle),
                  ),
                  Padding(padding: EdgeInsets.only(right: QSpace.xs)),
                  Text('/', style: loginStyle),
                  Padding(padding: EdgeInsets.only(right: QSpace.xs)),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(Routes.register);
                    },
                    child: Text('注册', style: loginStyle),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: QSpace.xs),
              ),
              Text('登录后可以体验更多', style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _loginPageHeader(BuildContext context) {
    String userName = "张三";
    String userImage =
        "https://tva1.sinaimg.cn/large/006y8mN6ly1g6tbnovh8jj30hr0hrq3l.jpg";
    return Container(
      padding: EdgeInsets.all(QSpace.md),
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      child: Row(
        children: [
          _Avatar(userImage),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userName, style: loginStyle),
              Padding(
                padding: EdgeInsets.only(bottom: QSpace.xs),
              ),
              Text('查看编辑个人资料', style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _isLogin ? _loginPageHeader(context) : _noLoginPageHeader(context);
  }
}
