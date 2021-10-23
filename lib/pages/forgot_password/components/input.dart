import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Input extends StatelessWidget {

  final TextEditingController emailController;

  const Input({Key key, this.emailController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
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
          label: AppLocalizations
              .of(context)
              .enterYourEmail,
          textInputType: TextInputType.text,
        ));
  }
}
