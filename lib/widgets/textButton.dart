import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';


class TextButtonWidget extends StatelessWidget {
  final Function function;
  @required
  final String text,fontFamily;
  final Color color;
  final FontWeight fontWeight;
  final double size, letterSpacing;
  final TextAlign textAlign;
  final bool underline;

  const TextButtonWidget(
      {Key key,
      this.function,
      this.text,
      this.color,
      this.fontWeight,
      this.size,
      this.letterSpacing,
      this.textAlign, this.fontFamily, this.underline=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: function,
        style: TextButton.styleFrom(
          primary: color,
        ),
        child: TextWidget(
          underline: underline,
          fontFamily: fontFamily,
            maxLines: 3,
            letterSpacing: letterSpacing,
            textAlign: textAlign,
            fontSize: size,
            textColor: color,
            fontWeight: fontWeight,
            text: text));
  }
}
