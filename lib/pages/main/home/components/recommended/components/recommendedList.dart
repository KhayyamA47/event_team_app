import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RecommendedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.only(top:8.h,bottom: 3.h),
      child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 20,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                padding: EdgeInsets.symmetric(vertical: 3.w),
                width: 85.w,
                // color: Color(0xff006E7C).withOpacity(0.5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            index % 2 == 0
                                ? Container(
                              alignment: Alignment.center,
                              height: 2.8.h,
                              width: 12.w,
                              decoration: new BoxDecoration(
                                color: Color(0xffCBB068),
                                borderRadius: new BorderRadius.all(
                                    Radius.circular(3.h)),
                              ),
                              child: TextWidget(
                                  fontFamily: Fonts.medium,
                                  maxLines: 1,
                                  text: "65\$",
                                  letterSpacing: 0.2,
                                  textColor: Constants.bgWhite,
                                  fontSize: 10.sp),
                            )
                                : Container(
                              alignment: Alignment.center,
                              height: 2.8.h,
                              width: 12.w,
                              decoration: new BoxDecoration(
                                color: Color(0xff57C693),
                                borderRadius: new BorderRadius.all(
                                    Radius.circular(3.h)),
                              ),
                              child: TextWidget(
                                  fontFamily: Fonts.medium,
                                  maxLines: 1,
                                  text: "Free",
                                  letterSpacing: 0.2,
                                  textColor: Constants.bgWhite,
                                  fontSize: 10.sp),
                            ),
                            SizedBox(width: 3.5.w),
                            TextWidget(
                                fontFamily: Fonts.regular,
                                maxLines: 1,
                                text: "Fri,21 Jul 2021, 16:00",
                                letterSpacing: 0.2,
                                textColor: Constants.mediumText,
                                fontSize: 9.sp),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 1.5.h),
                              alignment: Alignment.bottomCenter,
                              width: 65.w,
                              child: TextWidget(
                                  fontFamily: Fonts.bold,
                                  maxLines: 2,
                                  text: "Focus on Naming your Business",
                                  letterSpacing: 0.2,
                                  textColor: Constants.darkText,
                                  fontSize: 16.sp),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1.4.h),
                              child: CustomImageWidget(
                                width: 25.w,
                                height: 7.5.h,
                                source: 2,
                                boxFit: BoxFit.cover,
                                boxShape: BoxShape.rectangle,
                                path:
                                'https://www.osce.org/files/imagecache/10_large_gallery/f/images/web/6/b/117193.jpg?1517407317',
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 3.h),
                        Container(
                          // color: Colors.greenAccent,
                          width: 200,
                          height: 25,
                          child: Stack(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 5.3.w),
                                child: CircleAvatar(
                                  radius: 1.6.h,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 1.3.h,
                                    backgroundColor: Colors.amber,
                                    child: CustomImageWidget(
                                      source: 2,
                                      path: 'https://media.istockphoto.com/photos/head-shot-portrait-of-astonished-surprised-girl-with-wide-open-mouth-picture-id976653042?k=20&m=976653042&s=612x612&w=0&h=Q75se3uJjekZ9bfOgea6WBlsKBjAqj6DPODegCOyl9U=',
                                      width: 25.w,
                                      height: 7.5.h,
                                      boxFit: BoxFit.cover,
                                      boxShape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 2.7.w),
                                child: CircleAvatar(
                                  radius: 1.6.h,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 1.3.h,
                                    backgroundColor: Colors.blue,
                                    child: CustomImageWidget(
                                      source: 2,
                                      path: 'https://balancedscorecardwa.org/wp-content/uploads/2013/10/person.jpg',
                                      width: 25.w,
                                      height: 7.5.h,
                                      boxFit: BoxFit.cover,
                                      boxShape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding:  EdgeInsets.only(left: 0.w),
                                child: CircleAvatar(
                                  radius: 1.6.h,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 1.3.h,
                                    backgroundColor: Colors.red,
                                    child: CustomImageWidget(
                                      source: 2,
                                      path: 'https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f469ea85cc82fc8d6083f05%2FAmazon-Founder-and-CEO-Jeff-Bezos%2F960x0.jpg%3Ffit%3Dscale',
                                      width: 25.w,
                                      height: 7.5.h,
                                      boxFit: BoxFit.cover,
                                      boxShape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Column(
                //   children: [
                //     SizedBox(
                //       width: 70.w,
                //       child: Column(
                //         children: [
                //           Row(
                //             children: [
                //               Container(
                //                 alignment: Alignment.center,
                //                 height: 2.8.h,
                //                 width: 12.w,
                //                 decoration: new BoxDecoration(
                //                   color: Color(0xffCBB068),
                //                   borderRadius: new BorderRadius.all(Radius.circular(3.h)),
                //                 ),
                //                 child: TextWidget(
                //                     fontFamily: Fonts.medium,
                //                     maxLines: 1,
                //                     text: "65\$",
                //                     letterSpacing: 0.2,
                //                     textColor: Constants.bgWhite,
                //                     fontSize: 10.sp),
                //               ),
                //               SizedBox(width: 3.5.w),
                //               TextWidget(
                //                   fontFamily: Fonts.regular,
                //                   maxLines: 1,
                //                   text: "Fri,21 Jul 2021, 16:00",
                //                   letterSpacing: 0.2,
                //                   textColor: Constants.mediumText,
                //                   fontSize: 10.sp),
                //             ],
                //           ),
                //           SizedBox(height: 2.h),
                //           TextWidget(
                //               fontFamily: Fonts.bold,
                //               maxLines: 2,
                //               text: "Focus on Naming your Business",
                //               letterSpacing: 0.2,
                //               textColor: Constants.darkText,
                //               fontSize: 16.sp),
                //
                //         ],
                //       ),
                //     ),
                //     CustomImageWidget(
                //       width: 20.w,
                //       source:2,
                //       boxShape:BoxShape.rectangle,
                //       path: 'https://static.vecteezy.com/system/resources/previews/002/539/754/large_2x/middle-age-asian-executive-manager-clapping-hands-with-multiracial-business-team-for-success-of-new-project-in-office-meeting-room-photo.jpg',
                //     ),
                //   ],
                // ),
              );
            },
          )),
    );
  }
}
