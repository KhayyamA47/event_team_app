import 'dart:async';
import 'dart:developer';

import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/util/util.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CountAndResend extends StatefulWidget {
  final Timer timer;

  const CountAndResend({Key key, this.timer}) : super(key: key);

  @override
  _CountAndResendState createState() => _CountAndResendState(timer);
}

class _CountAndResendState extends State<CountAndResend> {
  int _start = 59;
  bool showResendText = false;
  Timer timer;

  _CountAndResendState(this.timer);

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    timer = new Timer.periodic(
      oneSec,
      (Timer t) {
        if (_start == 0) {
          setState(() {
            t.cancel();
            showResendText = true;
          });
        } else {
          setState(() {
            _start--;
            log(_start.toString());
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: !showResendText
          ? TextWidget(
              fontFamily: Fonts.medium,
              textAlign: TextAlign.center,
              maxLines: 1,
              text: formatMMSS(_start),
              textColor: Constants.mediumText,
              fontSize: 12.sp)
          : RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                style: TextStyle(fontSize: 12.sp),
                children: <TextSpan>[
                  TextSpan(
                      text: AppLocalizations.of(context).didntReceiveEmail,
                      style: TextStyle(
                          color: Constants.mediumText,
                          fontFamily: Fonts.regular)),
                  TextSpan(
                      text: ' ' + AppLocalizations.of(context).resendEmail,
                      style: TextStyle(
                          color: Constants.robbinsEggBlue,
                          fontFamily: Fonts.semiBold)),
                ],
              ),
            ),
    );
  }
}
