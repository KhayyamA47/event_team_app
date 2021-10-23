import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/itemWithCheckbox.dart';
import 'package:event_team_app/widgets/separator_line.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class GenderOptions extends StatefulWidget {
  final PanelController panelController;
  final ValueChanged<int> valueChanged;
  final Map<int, String> map;

  const GenderOptions(
      {Key key, this.panelController, this.valueChanged, this.map})
      : super(key: key);

  @override
  _GenderOptionsState createState() =>
      _GenderOptionsState(panelController, valueChanged,map);
}

class _GenderOptionsState extends State<GenderOptions> {
  PanelController panelController;
  Map<int, String> map = {};
  int val = -1;
  ValueChanged<int> valueChanged;
  _GenderOptionsState(this.panelController, this.valueChanged,this.map);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: AppLocalizations.of(context).gender,
            underline: false,
            fontSize: 14.sp,
            fontFamily: Fonts.bold,
            maxLines: 1,
            textColor: Constants.darkText,
          ),
          SizedBox(height: 2.h),
          SeparatorLine(),
          SizedBox(height: 2.h),
          TextWidget(
            text: AppLocalizations.of(context).notPublicProfile,
            underline: false,
            fontSize: 10.sp,
            fontFamily: Fonts.regular,
            maxLines: 2,
            letterSpacing: 0.2,
            textColor: Constants.mediumText,
          ),
          SizedBox(height: 2.h),
          ItemWithCheckbox(
            title: AppLocalizations.of(context).preferNotToSay,
            value: map.keys.elementAt(0),
            groupedValue: val,
            onValueChanged: (v) {
              setState(() {
                panelController.close();
                val = v;
                widget.valueChanged(val);
              });
            },
          ),
          ItemWithCheckbox(
            title: AppLocalizations.of(context).male,
            value: map.keys.elementAt(1),
            groupedValue: val,
            onValueChanged: (v) {
              setState(() {
                panelController.close();
                val = v;
                widget.valueChanged(val);
              });
            },
          ),
          ItemWithCheckbox(
            title: AppLocalizations.of(context).female,
            value: map.keys.elementAt(2),
            groupedValue: val,
            onValueChanged: (v) {
              setState(() {
                panelController.close();
                val = v;
                widget.valueChanged(val);
              });
            },
          ),
        ],
      ),
    );
  }
}
