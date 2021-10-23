import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BackButtonWidget extends StatelessWidget {
  final Function onPressed;
 

  const BackButtonWidget(
      {Key key,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(Icons.arrow_back_ios),
      onTap: () {
        onPressed();
      },
    );
  }
}
