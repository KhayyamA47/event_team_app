import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  static const SOURCE_ASSET = 1;
  static const SOURCE_NETWORK = 2;
  static const SOURCE_FILE = 3;
  static const SOURCE_PDF = 4;

  final double width, height;
  @required
  final int source;
  @required
  final dynamic path;
  final Color color;
  @required
  final BoxShape boxShape;
  final BoxFit boxFit;
  final Function function;
  final bool border;

  const CustomImageWidget({Key key, this.source, this.path, this.width, this.height, this.color, this.boxShape, this.boxFit, this.function, this.border = false})
      : super(key: key);

  ImageProvider getImageType() {
    ImageProvider imageProvider;
    switch (source) {
      case SOURCE_ASSET:
        imageProvider = AssetImage(path);
        return imageProvider;
        break;
      case SOURCE_NETWORK:
        imageProvider = NetworkImage(path);
        return imageProvider;
        break;
      case SOURCE_FILE:
        imageProvider = FileImage(path);
        return imageProvider;
        break;
      case SOURCE_PDF:
        imageProvider = AssetImage("assets/images/pdf_dummy.png");
    }
    return imageProvider;
  }

  @override
  Widget build(BuildContext context) {
    return source!=5?GestureDetector(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color,
            shape: boxShape,
            border: border ? Border.all(color: Colors.transparent) : null,
            image: DecorationImage(fit: boxFit, image: getImageType())),
      ),
      onTap: () {
        if(function!=null)
          function();
      },
    ):Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          shape: boxShape,
          border: border ? Border.all(color: Colors.transparent) : null,
      ),
      child: SvgPicture.asset(path,fit: boxFit==null?BoxFit.none:boxFit),
    );
  }
}
