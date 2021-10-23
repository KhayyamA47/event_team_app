import 'package:event_team_app/pages/main/home/components/recommended/components/recommendedList.dart';
import 'package:event_team_app/pages/main/home/components/recommended/components/title.dart';
import 'package:flutter/material.dart';

class Recommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RecommendedList(),
        ExpandedMenuTitle(),
      ],
    );
  }
}
