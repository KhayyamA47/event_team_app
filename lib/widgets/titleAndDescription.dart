import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class TitleAndDescription extends StatelessWidget {
 final String title,description;

  const TitleAndDescription({Key key, this.title, this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
            fontFamily: Fonts.medium,
            textAlign: TextAlign.center,
            maxLines: 2,
            text: title,
            textColor: Constants.darkText,
            fontWeight: FontWeight.w600,
            fontSize: 18.sp),
        SizedBox(height: 5.h),
        TextWidget(
            fontFamily: Fonts.medium,
            textAlign: TextAlign.left,
            maxLines: 10,
            text: description,
            textColor: Constants.lightText,
            fontSize: 14.sp),
      ],
    );
  }
}
