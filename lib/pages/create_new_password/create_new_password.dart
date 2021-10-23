import 'package:event_team_app/pages/create_new_password/components/header.dart';
import 'package:event_team_app/pages/create_new_password/components/inputs.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/backButton.dart';
import 'package:event_team_app/widgets/commonButton.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CreateNewPasswordPage extends StatefulWidget {
  @override
  _CreateNewPasswordPageState createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    newPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgWhite,
      body: body(),
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
              BackButtonWidget(onPressed: null),
              SizedBox(height: 1.5.h),

              Header(),
              SizedBox(height: 3.h),
              Inputs(passwordController: passwordController,newPasswordController: newPasswordController),
              SizedBox(height: 5.h),
            ],
          ),
          Button(function: () {}, text: AppLocalizations.of(context).save)
        ],
      ),
    );
  }
}
