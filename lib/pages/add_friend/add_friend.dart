import 'dart:developer';

import 'package:event_team_app/pages/add_friend/components/header.dart';
import 'package:event_team_app/pages/add_friend/components/name_description.dart';
import 'package:event_team_app/pages/add_friend/components/search_input.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/buttonWithIcon.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:event_team_app/widgets/commonButton.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddFriendPage extends StatefulWidget {
  @override
  _AddFriendPageState createState() => _AddFriendPageState();
}

class _AddFriendPageState extends State<AddFriendPage> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
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
          EdgeInsets.only(top: 5.h, bottom: 2.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              SizedBox(height: 2.h),

              NameAndDescription(),
              SizedBox(height: 3.h),
              SearchInput(
                  valueChanged: (String value) {
                    log(value);
                  },
                  searchController: searchController),
              SizedBox(
                height: 59.h,
                child: MediaQuery.removePadding(context: context,removeTop: true, child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (c, i) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomImageWidget(
                                source: 2,
                                boxFit: BoxFit.cover,
                                path:
                                'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
                                boxShape: BoxShape.circle,
                                height: 8.h,
                                width: 13.w,
                              ),
                              SizedBox(width: 4.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                    text: 'Khayyam',
                                    underline: false,
                                    fontSize: 10.sp,
                                    fontFamily: Fonts.medium,
                                    maxLines: 2,
                                    textColor: Constants.darkText,
                                  ),
                                  SizedBox(height: 0.3.h),

                                  TextWidget(
                                    text: 'Khayyam Abdinov',
                                    underline: false,
                                    fontSize: 9.sp,
                                    fontFamily: Fonts.regular,
                                    maxLines: 2,
                                    textColor: Constants.mediumText,
                                  ),
                                  SizedBox(height: 0.3.h),
                                  TextWidget(
                                    text: AppLocalizations.of(context).mutualFriends.replaceAll('#count', 4.toString()),
                                    underline: false,
                                    fontSize: 8.sp,
                                    letterSpacing: 0.2,
                                    fontFamily: Fonts.regular,
                                    maxLines: 2,
                                    textColor: Constants.mediumText.withOpacity(0.5),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              ButtonWithIconWidget(
                                horizontalPadding: 3.w,

                                function: (){

                              },textColor: Constants.robbinsEggBlue,radius: 0.5.h,buttonWidth: 18.w,buttonColor: Constants.robbinsEggBlue,buttonHeight: 3.3.h,widget: Row(
                                children: [
                                  CustomImageWidget(
                                    source: 5,
                                    boxFit: BoxFit.fitWidth,
                                    path: 'assets/icons/add_person.svg',
                                    boxShape: BoxShape.rectangle,
                                    height: 3.h,
                                    width: 3.7.w,
                                  ),
                                  SizedBox(width: 1.w),
                                  TextWidget(
                                    text: AppLocalizations.of(context).add,
                                    underline: false,
                                    fontSize: 10.sp,
                                    letterSpacing: 0.2,
                                    fontFamily: Fonts.medium,
                                    maxLines: 2,
                                    textColor: Constants.bgWhite,
                                  ),
                                ],
                              )),
                              InkWell(
                                child: Padding(
                                  padding:  EdgeInsets.only(left: 2.w),
                                  child: Icon(Icons.close,size: 1.7.h,color: Constants.mediumText),
                                ),
                                onTap: (){

                                },
                              )
                            ],
                          )
                        ],
                      );
                    }),)
              )
            ],
          ),
          Button(function: () {}, text: AppLocalizations.of(context).finish)
        ],
      ),
    );
  }
}
