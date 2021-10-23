import 'dart:developer';
import 'package:event_team_app/pages/add_friend/add_friend.dart';
import 'package:event_team_app/pages/create_account/create_account.dart';
import 'package:event_team_app/pages/forgot_password/forgot_password.dart';
import 'package:event_team_app/pages/login/login.dart';
import 'package:event_team_app/pages/main/home/home.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:event_team_app/widgets/separator_line.dart';
import 'package:event_team_app/widgets/slidingUpPanel.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List<Widget> items = [];

  @override
  void initState() {
    super.initState();

    items = [HomePage1(), HomePage1(), HomePage1(), HomePage1(), CreateAccountPage()];
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
      log(selectedIndex.toString());
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    log(selectedIndex.toString());
    return Scaffold(
        bottomNavigationBar:selectedIndex!=2? BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Constants.bgWhite,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home'), backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.explore), title: Text('Home'), backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.add), title: Text('Home'), backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), title: Text('Home'), backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Home'), backgroundColor: Colors.green),
            // BottomNavigationBarItem(
            //   icon: CustomImageWidget(
            //     source: 1,
            //     // color:selectedIndex==0?Colors.red:Colors.transparent,
            //     path: 'assets/icons/home.png',
            //     boxShape: BoxShape.rectangle,
            //     width: 4.w,
            //     height: 5.h,
            //   ),
            //   label: '',
            // ),
            // BottomNavigationBarItem(
            //   icon: CustomImageWidget(
            //     source: 5,
            //     color:selectedIndex==1?Colors.red:Colors.transparent,
            //     path: 'assets/icons/explore.svg',
            //     boxShape: BoxShape.rectangle,
            //   ),
            //   label: '',
            // ),
            // BottomNavigationBarItem(
            //   icon: CustomImageWidget(
            //     source: 5,
            //     path: 'assets/icons/add.svg',
            //     boxShape: BoxShape.rectangle,
            //   ),
            //   label: '',
            // ),
            // BottomNavigationBarItem(
            //   icon: CustomImageWidget(
            //     source: 5,
            //     color:selectedIndex==3?Colors.red:Colors.transparent,
            //     path: 'assets/icons/notification.svg',
            //     boxShape: BoxShape.rectangle,
            //   ),
            //   label: '',
            // ),
            // BottomNavigationBarItem(
            //   icon: CustomImageWidget(
            //     source: 5,
            //     color:selectedIndex==4?Colors.red:Colors.transparent,
            //     path: 'assets/icons/contacts.svg',
            //     boxShape: BoxShape.rectangle,
            //   ),
            //   label: '',
            // ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          selectedItemColor: Constants.robbinsEggBlue,
          unselectedItemColor: Color(0xffD4D6E1),
          onTap: onTap,
        ):SizedBox(),
        backgroundColor: Constants.bgWhite,
        body: Stack(
          children: [
            items.elementAt(selectedIndex),
            selectedIndex == 2
                ? Container(
                    height: 100.h,
                    width: 100.w,
                    color: Colors.black38,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                           InkWell(
                             child:  Container(
                               margin: EdgeInsets.only(top: 8.h, right: 5.w),
                               width: 10.w,
                               height: 10.w,
                               decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black54),
                               child: Icon(Icons.close, color: Colors.white),
                             ),
                             onTap: (){
                               setState(() {
                                 selectedIndex=0;
                               });
                             },
                           )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          height: 34.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Colors.white, borderRadius: new BorderRadius.only(topLeft: Radius.circular(2.h), topRight: Radius.circular(2.h))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 6.h),
                              SeparatorLine(),
                              SizedBox(height: 3.h),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomImageWidget(
                                    source: 5,
                                    path: 'assets/icons/create_person.svg',
                                    boxShape: BoxShape.circle,
                                    boxFit: BoxFit.cover,
                                    // width: 15.w,
                                    // height: 7.h,
                                  ),
                                  SizedBox(width: 5.w),

                                  Expanded(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(
                                        text: 'In person',
                                        fontSize: 14.sp,
                                        fontFamily: Fonts.semiBold,
                                        maxLines: 1,
                                        textColor: Constants.darkText,
                                      ),
                                      SizedBox(height: 0.7.h),

                                      TextWidget(
                                        text: 'Create event and get together with people in a specific location.',
                                        fontSize: 12.sp,
                                        fontFamily: Fonts.regular,
                                        maxLines: 2,
                                        textColor: Constants.mediumText,
                                      ),
                                    ],
                                  ),)
                                ],
                              ),
                              Expanded(child: SizedBox()),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomImageWidget(
                                    source: 5,
                                    path: 'assets/icons/create_online.svg',
                                    boxShape: BoxShape.circle,
                                    boxFit: BoxFit.cover,
                                    // width: 15.w,
                                    // height: 7.h,
                                  ),
                                  SizedBox(width: 5.w),

                                  Expanded(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(
                                        text: 'In person',
                                        fontSize: 14.sp,
                                        fontFamily: Fonts.semiBold,
                                        maxLines: 1,
                                        textColor: Constants.darkText,
                                      ),
                                      SizedBox(height: 0.7.h),

                                      TextWidget(
                                        text: 'Create event and get together with people in a specific location.',
                                        fontSize: 12.sp,
                                        fontFamily: Fonts.regular,
                                        maxLines: 2,
                                        textColor: Constants.mediumText,
                                      ),
                                    ],
                                  ),)
                                ],
                              ),
                              SizedBox(height: 4.h),

                            ],
                          ),
                        )
                      ],
                    ),
                  )
                : SizedBox()
          ],
        ));
  }
}
