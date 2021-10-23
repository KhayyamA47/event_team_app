import 'package:event_team_app/pages/main/home/components/categories/components/title.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoriesTitle(),
        Container(
          height: 20.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                  margin: EdgeInsets.only(left: index == 0 ? 5.w : 0),
                  height: 20.h,
                  width: 32.w,
                  decoration: new BoxDecoration(
                    color: Colors.green,
                    borderRadius: new BorderRadius.all(Radius.circular(4.w)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              fontFamily: Fonts.regular,
                              maxLines: 1,
                              text: '124 Events',
                              textColor: Constants.bgWhite,
                              fontSize: 9.sp),
                          SizedBox(height: 0.7.h),
                          TextWidget(
                              fontFamily: Fonts.bold,
                              maxLines: 1,
                              text: 'Sport',
                              textColor: Constants.bgWhite,
                              fontSize: 12.sp),
                        ],
                      ),
                      CustomImageWidget(
                        source: 5,
                        path: 'assets/icons/dummy.svg',
                        boxShape: BoxShape.rectangle,
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (c, i) {
                return SizedBox(width: 4.w);
              },
              itemCount: 20),
        )
      ],
    );
  }
}
