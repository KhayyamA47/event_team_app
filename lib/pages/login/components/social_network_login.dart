import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/widgets/buttonWithIcon.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SocialNetworkButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return     Row(
      children: [
        Expanded(
            child: ButtonWithIconWidget(
              horizontalPadding: 5.w,
              function: () {},
              buttonTextMaxLine: 1,
              textSize: 14.sp,
              radius: 1.5.h,
              buttonWidth: 100,
              textColor: Constants.darkText,
              buttonHeight: 7.h,
              buttonColor: Constants.cultured,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageWidget(
                    function: null,
                    height: 5.w,
                    width: 5.w,
                    source: 5,
                    boxFit: BoxFit.fill,
                    boxShape: BoxShape.circle,
                    path: 'assets/icons/google.svg',
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  TextWidget(
                      fontFamily: Fonts.medium,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      text: "Google",
                      textColor: Constants.darkText,
                      fontSize: 13.sp),
                ],
              ),
            )),
        SizedBox(
          width: 3.w,
        ),
        Expanded(
            child: ButtonWithIconWidget(
              horizontalPadding: 5.w,
              function: () {},
              buttonTextMaxLine: 1,
              textSize: 14.sp,
              radius: 1.5.h,
              buttonWidth: 100,
              textColor: Constants.darkText,
              buttonHeight: 7.h,
              buttonColor: Constants.cultured,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageWidget(
                    function: null,
                    height: 5.w,
                    width: 5.w,
                    source: 5,
                    boxFit: BoxFit.fill,
                    boxShape: BoxShape.circle,
                    path: 'assets/icons/facebook.svg',
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  TextWidget(
                      fontFamily: Fonts.medium,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      text: "Facebook",
                      textColor: Constants.darkText,
                      fontSize: 13.sp),
                ],
              ),
            )),
      ],
    );
  }
}
