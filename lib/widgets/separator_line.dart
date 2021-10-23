import 'package:event_team_app/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SeparatorLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 100.w,
      color: Constants.darkText.withOpacity(0.05),
    );
  }
}
