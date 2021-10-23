import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TermsPrivacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(fontSize: 12.sp),
            children: <TextSpan>[
              TextSpan(
                  text: AppLocalizations.of(context).byRegistering,
                  style: TextStyle(
                      color: Constants.mediumText,
                      fontFamily: Fonts.regular)),
              TextSpan(text: '\n'),
              TextSpan(
                  text: AppLocalizations.of(context).terms,
                  style: TextStyle(
                      color: Constants.robbinsEggBlue,
                      fontFamily: Fonts.regular),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Terms"');
                    }),
              TextSpan(
                  text: ' ' + AppLocalizations.of(context).and + ' ',
                  style: TextStyle(
                      color: Constants.mediumText,
                      fontFamily: Fonts.regular)),
              TextSpan(
                  text: AppLocalizations.of(context).privacyPolicy,
                  style: TextStyle(
                      color: Constants.robbinsEggBlue,
                      fontFamily: Fonts.regular,
                      height: 0.17.h),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Privacy policy"');
                    }),
            ],
          ),
        )
      ],
    );
  }
}
