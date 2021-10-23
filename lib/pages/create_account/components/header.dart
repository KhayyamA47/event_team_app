import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:event_team_app/widgets/textButton.dart';
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
            textAlign: TextAlign.left,
            maxLines: 1,
            letterSpacing: -0.2,
            text: AppLocalizations.of(context).createAccount,
            textColor: Constants.darkText,
            fontWeight: FontWeight.w600,
            fontSize: 26.sp),
        Row(
          children: [
            TextWidget(
                fontFamily: Fonts.regular,
                textAlign: TextAlign.left,
                maxLines: 1,
                text: AppLocalizations.of(context).alreadyHaveAccount,
                textColor: Constants.mediumText,
                fontSize: 14.sp),
            TextButtonWidget(
              underline: true,
              text: AppLocalizations.of(context).signIn,
              color: Constants.robbinsEggBlue,
              function: () {},
              size: 14.sp,
              fontFamily: Fonts.semiBold,
            )
          ],
        ),
      ],
    );
  }
}
