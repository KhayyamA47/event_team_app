import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TipsTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w) +
          EdgeInsets.only(top: 4.h, bottom: 2.4.h),
      child: TextWidget(
          fontFamily: Fonts.bold,
          maxLines: 2,
          text: AppLocalizations.of(context).tips,
          textColor: Constants.darkText,
          fontWeight: FontWeight.w600,
          fontSize: 14.sp),
    );
  }
}
