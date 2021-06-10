import 'package:flutter/cupertino.dart';
import 'package:hao_ke_zu_fang/config/style_vars.dart';
import 'package:hao_ke_zu_fang/widgets/common_image.dart';

import 'function_button_data.dart';

class FunctionButtonWidget extends StatelessWidget {
  final FunctionButtonItem data;
  const FunctionButtonWidget(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (data.onTapHandle != null) {
            data.onTapHandle(context);
          }
        },
        child: Container(
          margin: EdgeInsets.only(top: QSpace.md),
          width: MediaQuery.of(context).size.width * 0.33,
          child: Column(
            children: [
              CommonImage(data.imageUrl),
              Text(data.title),
            ],
          ),
        ));
  }
}
