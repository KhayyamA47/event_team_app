import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NextEventsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w) + EdgeInsets.only(top: 1.h),

      child: Row(
        children: [
        TextWidget(
              fontFamily: Fonts.medium,
              maxLines: 2,
              text: 'Next events',
              textColor: Constants.darkText,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.start,
              fontSize: 14.sp),
        ],
      ),
    );
  }
}
