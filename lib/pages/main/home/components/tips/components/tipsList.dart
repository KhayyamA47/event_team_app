import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:sizer/sizer.dart';
class TipsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              margin: EdgeInsets.only(left: index == 0 ? 5.w : 0),
              width: 85.w,
              decoration: new BoxDecoration(
                color: Color(0xff006E7C).withOpacity(0.05),
                borderRadius: new BorderRadius.all(Radius.circular(4.w)),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 4.w),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 3.2.h,
                          backgroundColor:
                          Constants.robbinsEggBlue.withOpacity(0.1),
                          child: CircleAvatar(
                            radius: 2.7.h,
                            backgroundColor: Constants.robbinsEggBlue,
                            child: Icon(
                              Icons.add,
                              color: Constants.bgWhite,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 1.2.h),
                          TextWidget(
                              fontFamily: Fonts.bold,
                              maxLines: 2,
                              text: 'Activate your location',
                              textColor: Constants.darkText,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp),
                          SizedBox(height: 1.h),
                          TextWidget(
                              fontFamily: Fonts.regular,
                              maxLines: 2,
                              text:
                              'By activating the location, you can easily see the events closest to you',
                              textColor: Constants.mediumText,
                              fontSize: 10.sp),
                          SizedBox(height: 3.h),
                          Row(
                            children: [
                              ButtonWidget(
                                radius: 3.h,
                                buttonHeight: 3.5.h,
                                function: () {},
                                buttonColor:
                                Color(0xff006E7C).withOpacity(0.05),
                                textColor: Constants.darkText,
                                fontFamily: Fonts.medium,
                                text: AppLocalizations.of(context).notNow,
                                textSize: 10.sp,
                                buttonWidth: 22.w,
                                buttonTextMaxLine: 1,
                              ),
                              SizedBox(width: 3.w),
                              ButtonWidget(
                                radius: 3.h,
                                buttonHeight: 3.5.h,
                                function: () {},
                                buttonColor: Constants.robbinsEggBlue,
                                textColor: Constants.bgWhite,
                                fontFamily: Fonts.medium,
                                text: AppLocalizations.of(context).enable,
                                textSize: 10.sp,
                                buttonWidth: 20.w,
                                buttonTextMaxLine: 1,
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.end,
                          )
                        ],
                      ))
                ],
              ),
            );
          },
          separatorBuilder: (c, i) {
            return SizedBox(width: 4.w);
          },
          itemCount: 20),
    );
  }
}
