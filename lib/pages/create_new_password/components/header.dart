import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
            fontFamily: Fonts.extraBold,
            textAlign: TextAlign.center,
            maxLines: 2,
            letterSpacing: -0.2,
            text: AppLocalizations.of(context).createNewPasswordLabel,
            textColor: Constants.darkText,
            fontWeight: FontWeight.w600,
            fontSize: 22.sp),
        SizedBox(height: 6.h),
        TextWidget(
            fontFamily: Fonts.regular,
            textAlign: TextAlign.left,
            maxLines: 10,
            text: AppLocalizations.of(context).createNewPasswordDescription,
            textColor: Constants.mediumText,
            fontSize: 14.sp),
      ],
    );
  }
}
