import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HeaderDescription extends StatelessWidget {
  final String mail;

  const HeaderDescription({Key key, this.mail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: TextStyle(fontSize: 14.sp),
        children: <TextSpan>[
          TextSpan(
              text: AppLocalizations.of(context).verifyDescription1,
              style: TextStyle(
                  color: Constants.mediumText,
                  fontFamily: Fonts.regular)),
          TextSpan(text: '\n'),
          TextSpan(
              text: mail,
              style: TextStyle(
                  color: Constants.robbinsEggBlue,
                  fontFamily: Fonts.semiBold),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Click');
                }),
          TextSpan(
              text: ' ' + AppLocalizations.of(context).verifyDescription2 + ' ',
              style: TextStyle(
                  color: Constants.mediumText,
                  fontFamily: Fonts.regular,height: 0.17.h)),

        ],
      ),
    );
  }
}
