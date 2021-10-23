import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Inputs extends StatelessWidget {
  final TextEditingController passwordController;
  final TextEditingController newPasswordController;

  const Inputs({Key key, this.passwordController, this.newPasswordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Theme(
            data: ThemeData(
              primaryColor: Constants.robbinsEggBlue,
            ),
            child: TextFieldWidget(
              fontFamily: Fonts.regular,
              hintColor: Constants.darkText,
              isEnabled: true,
              textColor: Constants.bgDark,
              obscureText: false,
              letterSpacing: 0.2,
              fontSize: 14.sp,
              fillColor: Constants.bgWhite,
              textEditingController: passwordController,
              label: AppLocalizations.of(context).enterPassword,
              textInputType: TextInputType.text,
            )),
        SizedBox(height: 2.h),
        Theme(
            data: ThemeData(
              primaryColor: Constants.robbinsEggBlue,
            ),
            child: TextFieldWidget(
              fontFamily: Fonts.regular,
              hintColor: Constants.darkText,
              isEnabled: true,
              textColor: Constants.bgDark,
              obscureText: false,
              letterSpacing: 0.2,
              fontSize: 14.sp,
              fillColor: Constants.bgWhite,
              textEditingController: newPasswordController,
              label: AppLocalizations.of(context).confirmNewPassword,
              textInputType: TextInputType.text,
            )),
      ],
    );
  }
}
