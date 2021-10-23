import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ButtonWithIconWidget extends StatelessWidget {
  final Function function;
  final Color buttonColor, textColor;
  final double radius, buttonHeight, textSize, buttonWidth;
  final int buttonTextMaxLine;
  final List<Color> colors;
  final double horizontalPadding;
  @required
  final Widget widget;

  const ButtonWithIconWidget(
      {Key key,
      this.function,
      this.buttonColor,
      this.textColor,
      this.radius,
      this.buttonHeight,
      this.textSize,
      this.buttonTextMaxLine,
      this.colors,
      this.widget,
      this.buttonWidth, this.horizontalPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        alignment: Alignment.center,
        height: buttonHeight,
        width: buttonWidth == null ? double.infinity : buttonWidth,
        decoration: buttonColor == null
            ? BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(radius)), gradient: LinearGradient(colors: colors))
            : BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                color: buttonColor,
              ),
        child: widget
      ),
      onTap: () {
        function();
      },
    );
  }
}
