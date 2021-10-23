import 'package:event_team_app/pages/main/home/components/categories/categories.dart';
import 'package:event_team_app/pages/main/home/components/chip_button.dart';
import 'package:event_team_app/pages/main/home/components/next_events/next_events.dart';
import 'package:event_team_app/pages/main/home/components/recommended/recommended.dart';
import 'package:event_team_app/pages/main/home/components/tips/tips.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'components/header.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Constants.bgWhite,
      body: Center(
        child: body(),
      )
    );
  }

  Widget body() {
    return
       ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w) + EdgeInsets.only(top: 2.h, bottom: 2.4.h),
                  child: Header(),
                ),
                Container(
                    height: 5.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ChipButton(color: Color(0xff258FDD), label: AppLocalizations.of(context).findFriends, iconPath: 'assets/icons/search.svg', function: () {}),
                        ChipButton(
                            color: Color(0xff8B69D9), label: AppLocalizations.of(context).browseCategory, iconPath: 'assets/icons/browse.svg', function: () {}),
                        ChipButton(color: Color(0xff46C3D3), label: AppLocalizations.of(context).myEvents, iconPath: 'assets/icons/events.svg', function: () {}),
                        ChipButton(
                            color: Color(0xff6D7DC4), label: AppLocalizations.of(context).recentlyViewed, iconPath: 'assets/icons/recent.svg', function: () {}),
                      ],
                    )),
                NextEvent(),
                Categories(),
                Tips(),
                Recommended()
              ],
            ),
          ],
        );}
}
