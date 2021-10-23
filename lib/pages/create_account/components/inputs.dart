import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Inputs extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const Inputs({Key key, this.usernameController, this.emailController,this.passwordController})
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
              textEditingController: usernameController,
              label: AppLocalizations.of(context).enterUsername,
              textInputType: TextInputType.text,
            )),
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
              textEditingController: emailController,
              label: AppLocalizations.of(context).enterYourEmail,
              textInputType: TextInputType.text,
            )),
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
      ],
    );
  }
}
