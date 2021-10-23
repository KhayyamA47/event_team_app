import 'package:event_team_app/pages/main/home/components/tips/components/tipsList.dart';
import 'package:event_team_app/pages/main/home/components/tips/components/title.dart';
import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TipsTitle(),
        TipsList()
      ],
    );
  }
}
