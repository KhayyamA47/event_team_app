import 'dart:developer';

import 'package:event_team_app/pages/login/components/header.dart';
import 'package:event_team_app/pages/login/components/inputs.dart';
import 'package:event_team_app/pages/login/components/terms_privacy.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/button.dart';
import 'package:event_team_app/widgets/buttonWithIcon.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:event_team_app/widgets/commonButton.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:event_team_app/widgets/textButton.dart';
import 'package:event_team_app/widgets/textField.dart';
import 'package:event_team_app/widgets/titleAndDescription.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'components/social_network_login.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  String loginError;
  String passwordError;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  Widget buttons() {
    return Column(
      children: [
        Button(function: () {}, text: AppLocalizations.of(context).signIn),
        SizedBox(height: 2.h),
        TextButtonWidget(
          underline: true,
          text: AppLocalizations.of(context).forgotPassword,
          color: Constants.darkText,
          function: () {},
          size: 13.sp,
          fontFamily: Fonts.regular,
        )
      ],
    );
  }

  Widget body() {
    return Container(
      height: 100.h,
      padding: EdgeInsets.symmetric(horizontal: 5.w) +
          EdgeInsets.only(top: 8.h, bottom: 2.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              SizedBox(height: 2.h),
              Inputs(
                  usernameController: usernameController,
                  passwordController: passwordController),
              SizedBox(height: 5.h),
              buttons(),
            ],
          ),
          loginBottomWidgets()
        ],
      ),
    );
  }

  Widget loginBottomWidgets() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
                    color: Constants.lightText.withOpacity(0.5), height: 0.5)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: TextWidget(
                  fontFamily: Fonts.regular,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  text: AppLocalizations.of(context).orContinueWith,
                  textColor: Constants.darkText,
                  fontSize: 12.sp),
            ),
            Expanded(
                child: Container(
                    color: Constants.lightText.withOpacity(0.5), height: 0.5)),
          ],
        ),
        SizedBox(height: 4.5.h),
        SocialNetworkButtons(),
        SizedBox(height: 4.5.h),
        TermsPrivacy()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Constants.bgWhite,
      body: body(),
    );
  }
}
