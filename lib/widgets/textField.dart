import 'package:event_team_app/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String label, fontFamily,hint;
  final Color hintColor, textColor, fillColor,labelColor;
  final FontWeight fontWeight;
  final double fontSize, letterSpacing;
  final TextInputType textInputType;
  final Widget suffix;
  final String prefix;
  @required
  final bool obscureText;
  @required
  final isEnabled;
  final int maxLines;
  final String errorText;
  final Function onchanged;

  const TextFieldWidget(
      {Key key,
      this.label,
        this.hint,
      this.hintColor,
      this.fontWeight,
      this.fontSize,
      this.letterSpacing,
      this.textColor,
      this.fillColor,
      this.textInputType,
      this.obscureText,
      this.textEditingController,
      this.isEnabled,
      this.errorText,
      this.fontFamily,
      this.suffix,
      this.prefix,
      this.maxLines,
      this.onchanged, this.labelColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: 1.0,
        ),
        ///For disabling  size changing according user device font size
        child: Container(
          width: 100.w,
          child: TextFormField(
            readOnly: isEnabled ? false : true,
            enabled: isEnabled,
            controller: textEditingController,
            obscureText: obscureText,
            keyboardType: textInputType,
            onChanged: onchanged,
            maxLines: maxLines != null ? maxLines : 1,
            style: TextStyle(
                fontFamily: fontFamily,
                color: textColor,
                letterSpacing: letterSpacing,
                fontSize: fontSize,
                fontWeight: fontWeight),
            // inputFormatters: formatter == null ? [] : [formatter],
            decoration: InputDecoration(
                // contentPadding: EdgeInsets.only(top:0.1.h,left: 0.4.h),
                isDense: false,
                labelText: label,
                labelStyle: TextStyle(
                    fontFamily: fontFamily,
                    color: labelColor,
                    letterSpacing: letterSpacing,
                    fontSize: fontSize,
                    fontWeight: fontWeight),
                errorText: errorText,
                prefixText: prefix,
                suffixIcon: suffix,
                hintText: hint,
                hintStyle: TextStyle(
                    fontFamily: fontFamily,
                    color: hintColor,
                    letterSpacing: letterSpacing,
                    fontSize: fontSize,
                    fontWeight: fontWeight),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE5E7ED)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Constants.robbinsEggBlue),
                )),
          ),
        ));
  }
}
