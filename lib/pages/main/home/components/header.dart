import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextWidget(
        fontFamily: Fonts.extraBold,
        textAlign: TextAlign.center,
        maxLines: 1,
        letterSpacing: -0.2,
        text: AppLocalizations.of(context).home,
        textColor: Constants.darkText,
        fontWeight: FontWeight.w600,
        fontSize: 21.sp);
  }
}
