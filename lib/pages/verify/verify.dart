import 'dart:async';
import 'dart:developer';
import 'package:event_team_app/models/RegisterObject.dart';
import 'package:event_team_app/pages/main/main.dart';
import 'package:event_team_app/pages/verify/components/count_and_resend.dart';
import 'package:event_team_app/pages/verify/components/header/description.dart';
import 'package:event_team_app/pages/verify/components/header/title.dart';
import 'package:event_team_app/pages/verify/components/otp_input.dart';
import 'package:event_team_app/services.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/util.dart';
import 'package:event_team_app/widgets/overlay_loader.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VerifyPage extends StatefulWidget {
  final RegisterObject registerObject;

  const VerifyPage({Key key, this.registerObject}) : super(key: key);
  @override
  _VerifyPageState createState() => _VerifyPageState(registerObject);
}

class _VerifyPageState extends State<VerifyPage> {
  TextEditingController otpController = TextEditingController();
  String otp;
  Timer timer;
  RegisterObject registerObject;
  _VerifyPageState(this.registerObject);
  @override
  void dispose() {
    super.dispose();
    otpController.dispose();
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
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  child: Icon(Icons.close),
                  onTap: () {
                    timer.cancel();
                  },
                ),
              ),
              SizedBox(height: 1.5.h),
              HeaderTitle(),
              SizedBox(height: 2.h),
              HeaderDescription(mail: registerObject.email),
              SizedBox(height: 2.h),
              OtpInput(
                function: () {
                  // _timer.cancel();
                },
                valueChanged: (pin)async {
                    otp = pin;
                    // timer.cancel();
                    log('print pin $pin');
                    loading(context);
                    confirm(context,await getShared(Constants.key),pin).then((value) async {
                      Loader.hide();
                     await setShared(Constants.token, value.body.token).then((value) {
                       Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MainPage()), (Route<dynamic> route) => false);
                     });

                    });
                },
              )
            ],
          ),
          CountAndResend(timer: timer)
        ],
      ),
    );
  }
}
