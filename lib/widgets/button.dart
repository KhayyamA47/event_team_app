import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text, fontFamily;
  final Function function;
  final Color buttonColor, textColor, borderColor;
  final double radius, buttonHeight, textSize,buttonWidth;
  final int buttonTextMaxLine;

  const ButtonWidget(
      {Key key,
      this.text,
      this.function,
      this.buttonColor,
      this.textColor,
      this.borderColor,
      this.radius,
      this.buttonHeight,
      this.textSize,
      this.buttonTextMaxLine,
      this.fontFamily, this.buttonWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: buttonHeight,
        width: buttonWidth==null?double.infinity:buttonWidth,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: buttonColor,
            side: BorderSide(color: borderColor != null ? borderColor : buttonColor),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
          ),
          onPressed: () {
            function();
          },
          child: Text(text,
              maxLines: buttonTextMaxLine,
              style: TextStyle(fontFamily: fontFamily, color: textColor, fontSize: textSize, fontWeight: FontWeight.w600, letterSpacing: 0.2),
              textScaleFactor: 1.0,
              textAlign: TextAlign.center),
        ));
  }
}
