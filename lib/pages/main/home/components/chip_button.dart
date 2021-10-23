import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChipButton extends StatelessWidget {

  final String label,iconPath;
  final Color color;
  final Function function;

  const ChipButton({Key key, this.label, this.color, this.function, this.iconPath}) : super(key: key);


  @override
  Widget build(BuildContext context) {
      return InkWell(
        child: Container(
          margin: EdgeInsets.only(right: 3.w),
          decoration: new BoxDecoration(
            color: Color(0xffF7F8FA),
            borderRadius: new BorderRadius.all(Radius.circular(3.h)),
          ),
          child: Row(
            children: [
              SizedBox(width: 2.w),
              CircleAvatar(
                radius: 2.h,
                backgroundColor: color,
                child:  CustomImageWidget(
                  source: 5,
                  path: iconPath,
                  boxShape: BoxShape.rectangle,
                ),
              ),
              SizedBox(width: 2.9.w),
              TextWidget(
                  fontFamily: Fonts.medium,
                  maxLines: 1,
                  letterSpacing: 0.2,
                  text: label,
                  textColor: Constants.darkText,
                  fontSize: 10.sp),
              SizedBox(width: 3.6.w),
            ],
          ),
        ),
        onTap: (){
          function();
        },
      );
  }
}
