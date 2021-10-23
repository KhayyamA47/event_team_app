import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CategoriesTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w) +
          EdgeInsets.only(top: 5.h, bottom: 2.7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
              fontFamily: Fonts.bold,
              maxLines: 1,
              text: AppLocalizations.of(context).categories,
              textColor: Constants.darkText,
              fontWeight: FontWeight.w600,
              fontSize: 14.sp),
          TextWidget(
              fontFamily: Fonts.regular,
              maxLines: 2,
              letterSpacing: 0.2,
              text: AppLocalizations.of(context).browseAll,
              textColor: Constants.mediumText,
              fontWeight: FontWeight.w600,
              fontSize: 10.sp),
        ],
      ),
    );
  }
}
