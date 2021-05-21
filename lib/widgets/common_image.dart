import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

final _httpReg = RegExp('^http');
final _localReg = RegExp('^static');

class CommonImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final BoxFit fit;

  const CommonImage(
      {Key key, this.url, this.width, this.height, this.fit = BoxFit.cover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (_httpReg.hasMatch(url)) {
      return ExtendedImage.network(
        url,
        width: width,
        height: height,
        fit: BoxFit.fill,
        cache: true,
        // shape: boxShape,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        //cancelToken: cancellationToken,
      );
    }

    if (_localReg.hasMatch(url)) {
      return Image.asset(
        url,
        width: width,
        height: height,
        fit: fit,
      );
    }

    assert(false, "图片格式错误 $url");
    return Container();
  }
}
