import 'package:event_team_app/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Button extends StatelessWidget {
  final String text;
  final Function function;

  const Button({
    Key key,
    this.text,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 7.h,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Constants.robbinsEggBlue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.2.h)),
          ),
          onPressed: () {
            function();
          },
          child: Text(text,
              maxLines: 1,
              style: TextStyle(
                  fontFamily: Fonts.medium,
                  color: Constants.bgWhite,
                  fontSize: 14.sp,
                  letterSpacing: 0.2),
              textScaleFactor: 1.0,
              textAlign: TextAlign.center),
        ));
  }
}
