import 'package:event_team_app/pages/login/login.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/button.dart';
import 'package:event_team_app/widgets/buttonWithIcon.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Slide extends StatelessWidget {
  final String image, title, description;
  final int index;
  final PageController controller;

  const Slide(
      {Key key,
      this.image,
      this.title,
      this.description,
      this.index,
      this.controller})
      : super(key: key);

  Widget indicatorDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: index == 0 ? 7.w : 5.w,
          height: 1.7.h,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: index == 0 ? Constants.robbinsEggBlue : Constants.bgLight,
              borderRadius: BorderRadius.all(Radius.circular(1.h))),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 1.w),
          width: index == 1 ? 7.w : 5.w,
          height: 1.7.h,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: index == 1 ? Constants.robbinsEggBlue : Constants.bgLight,
              borderRadius: BorderRadius.all(Radius.circular(1.h))),
        ),
        Container(
          width: index == 2 ? 7.w : 5.w,
          height: 1.7.h,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: index == 2 ? Constants.robbinsEggBlue : Constants.bgLight,
              borderRadius: BorderRadius.all(Radius.circular(1.h))),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5.w, top: 5.h, bottom: 5.h),
            child: ButtonWidget(
              buttonWidth: 20.w,
              buttonHeight: 4.h,
              buttonTextMaxLine: 1,
              textSize: 12.sp,
              radius: 1.5.h,
              fontFamily: Fonts.medium,
              text: AppLocalizations.of(context).skip,
              textColor: Constants.darkText,
              buttonColor: Constants.bgLight,
              function: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    (Route<dynamic> route) => false);
              },
            ),
          ),
          CustomImageWidget(
            function: null,
            source: 1,
            path: 'assets/images/intro1.png',
            boxShape: BoxShape.rectangle,
            boxFit: BoxFit.contain,
            height: 40.h,
          ),
          SizedBox(height: 1.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                    text: title,
                    fontFamily: Fonts.regular,
                    fontWeight: FontWeight.bold,
                    textColor: Constants.darkText,
                    fontSize: 25.sp,
                    maxLines: 2,
                    letterSpacing: 0.2),
                SizedBox(height: 1.h),
                TextWidget(
                    maxLines: 4,
                    text: description,
                    fontFamily: Fonts.medium,
                    fontWeight: FontWeight.normal,
                    textColor: Constants.lightText,
                    fontSize: 14.sp,
                    textAlign: TextAlign.left,
                    letterSpacing: 0.0),
              ],
            ),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w) +
            EdgeInsets.only(bottom: 2.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            indicatorDots(),
            ButtonWithIconWidget(
              horizontalPadding: 5.w,
              buttonWidth: 20.w,
              buttonHeight: 8.h,
              colors: [Constants.robbinsEggBlue, Constants.robbinsEggBlue],
              function: () {
                controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeIn);
              },
              widget: Icon(Icons.arrow_right_alt,
                  size: 5.h, color: Constants.bgWhite),
              radius: 2.h,
            )
          ],
        ),
      ),
    ]);
  }
}
