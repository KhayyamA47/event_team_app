import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ImageOptions extends StatelessWidget {

  final String path,title;
  final Function function;

  const ImageOptions({Key key, this.path, this.title, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Row(
            children: [
              CustomImageWidget(
                source: 1,
                path: path,
                boxShape: BoxShape.circle,
                width: 7.w,
                height: 3.h,
              ),
              SizedBox(width: 3.w),
              TextWidget(
                fontFamily: Fonts.medium,
                text: title,
                maxLines: 1,
                textColor: Constants.mediumText,
                fontSize: 10.sp,
              ),
            ],
          ),
          SizedBox(height: 1.h)
        ],
      ),
      onTap: () {
        function();
      },
    );
  }
}
