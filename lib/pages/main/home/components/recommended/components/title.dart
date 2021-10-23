import 'dart:developer';

import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/buttonWithIcon.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// class RecommendedExpandableMenu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ExpansionTile(
//       title: TextWidget(
//               fontFamily: Fonts.bold,
//               maxLines: 2,
//               text: AppLocalizations.of(context).recommended,
//               textColor: Constants.darkText,
//               fontSize: 16.sp),
//       backgroundColor: Constants.bgWhite,
//       children: <Widget>[
//     Container(
//       padding: EdgeInsets.only(left: 5.w),
//       alignment: Alignment.centerLeft,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TextWidget(
//               fontFamily: Fonts.medium,
//               maxLines: 2,
//               text: AppLocalizations.of(context).popularEvents,
//               textColor: Constants.darkText,
//               fontWeight: FontWeight.w600,
//               textAlign: TextAlign.start,
//               fontSize: 14.sp),
// SizedBox(height: 1.5.h),
//           TextWidget(
//               fontFamily: Fonts.medium,
//               maxLines: 2,
//               text: AppLocalizations.of(context).recommended,
//               textColor: Constants.darkText,
//               fontWeight: FontWeight.w600,
//               fontSize: 14.sp),
//           TextWidget(
//               fontFamily: Fonts.medium,
//               maxLines: 2,
//               text: AppLocalizations.of(context).friendsEvents,
//               textColor: Constants.darkText,
//               fontWeight: FontWeight.w600,
//               fontSize: 14.sp),
//           TextWidget(
//               fontFamily: Fonts.medium,
//               maxLines: 2,
//               text: AppLocalizations.of(context).hosted,
//               textColor: Constants.darkText,
//               fontWeight: FontWeight.w600,
//               fontSize: 14.sp),
//           TextWidget(
//               fontFamily: Fonts.medium,
//               maxLines: 2,
//               text: AppLocalizations.of(context).going,
//               textColor: Constants.darkText,
//               fontWeight: FontWeight.w600,
//               fontSize: 14.sp),
//           TextWidget(
//               fontFamily: Fonts.medium,
//               maxLines: 2,
//               text: AppLocalizations.of(context).interested,
//               textColor: Constants.darkText,
//               fontWeight: FontWeight.w600,
//               fontSize: 14.sp),
//         ],
//       ),
//     )
//       ],
//     );
//
//
//
//     //   Padding(
//     //   padding: EdgeInsets.symmetric(horizontal: 5.w) +
//     //       EdgeInsets.only(top: 4.h),
//     //   child: TextWidget(
//     //       fontFamily: Fonts.bold,
//     //       maxLines: 2,
//     //       text: AppLocalizations.of(context).recommended,
//     //       textColor: Constants.darkText,
//     //       fontWeight: FontWeight.w600,
//     //       fontSize: 14.sp),
//     // );
//   }
// }
class ExpandedMenuTitle extends StatefulWidget {
  @override
  _ExpandedMenuTitleState createState() => _ExpandedMenuTitleState();
}

class _ExpandedMenuTitleState extends State<ExpandedMenuTitle> {
  bool showOptions = false;
  Map<int, String> optionsMap = {};
  String selectedOption;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      optionsMap = {
        0: AppLocalizations.of(context).popularEvents,
        1: AppLocalizations.of(context).recommended,
        2: AppLocalizations.of(context).friendsEvents,
        3: AppLocalizations.of(context).hosted,
        4: AppLocalizations.of(context).going,
        5: AppLocalizations.of(context).interested,
      };
      setState(() {
        selectedOption = optionsMap[1];
      });
      log(selectedOption);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w) + EdgeInsets.only(top: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ButtonWithIconWidget(
            horizontalPadding: 0,
            buttonHeight: 8.h,
            buttonColor: Colors.transparent,
            function: () {
              setState(() {
                showOptions = !showOptions;
              });
            },
            widget: Row(
              children: [
                TextWidget(fontFamily: Fonts.bold, maxLines: 2, text: selectedOption, textColor: Constants.darkText, fontSize: 16.sp),
                Icon(
                  !showOptions ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                  size: 5.h,
                  color: Constants.bgDark.withOpacity(0.3),
                )
              ],
            ),
            radius: 2.h,
          ),
          showOptions
              ? Container(
                  padding: EdgeInsets.all(3.h),
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: TextWidget(
                              fontFamily: Fonts.medium,
                              maxLines: 1,
                              text: optionsMap[index],
                              textColor: selectedOption == optionsMap[index] ? Constants.robbinsEggBlue : Constants.darkText,
                              fontWeight: FontWeight.w600,
                              textAlign: TextAlign.left,
                              fontSize: 13.sp),
                          onTap: () {
                            setState(() {
                              selectedOption = optionsMap[index];
                              showOptions = false;
                            });
                          },
                        );
                      },
                      separatorBuilder: (c, i) {
                        return SizedBox(height: 3.h);
                      },
                      itemCount: optionsMap.keys.length),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
