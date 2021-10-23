import 'package:event_team_app/pages/login/login.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/button.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageWidget(
          source: 2,
          boxFit: BoxFit.cover,
          path:
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
          boxShape: BoxShape.circle,
          height: 8.h,
          width: 12.w,
        ),
        ButtonWidget(
          buttonWidth: 23.w,
          buttonHeight: 3.h,
          buttonTextMaxLine: 1,
          textSize: 10.sp,
          radius: 1.h,
          fontFamily: Fonts.medium,
          text: AppLocalizations.of(context).skipNow,
          textColor: Constants.darkText,
          buttonColor: Constants.bgLight,
          function: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => LoginPage()),
                (Route<dynamic> route) => false);
          },
        ),
      ],
    );
  }
}
