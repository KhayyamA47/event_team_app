import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ItemWithCheckbox extends StatefulWidget {
  final dynamic value, groupedValue;
  final String title;
  final Color activeCheckIconColor, activeCheckIconBackground, titleColor;
  final ValueChanged<int> onValueChanged;

  const ItemWithCheckbox(
      {Key key,
      this.value,
      this.title,
      this.onValueChanged,
      this.activeCheckIconColor,
      this.activeCheckIconBackground,
      this.titleColor,
      this.groupedValue})
      : super(key: key);

  @override
  _ItemWithCheckboxState createState() => _ItemWithCheckboxState(
      value,
      groupedValue,
      title,
      onValueChanged,
      activeCheckIconColor,
      activeCheckIconBackground,
      titleColor);
}

class _ItemWithCheckboxState extends State<ItemWithCheckbox> {
  dynamic value, groupedValue;
  String title;
  ValueChanged<int> onValueChanged;
  Color activeCheckIconColor, activeCheckIconBackground, titleColor;

  _ItemWithCheckboxState(
      this.value,
      this.groupedValue,
      this.title,
      this.onValueChanged,
      this.activeCheckIconColor,
      this.activeCheckIconBackground,
      this.titleColor);

  changed(var changed) {
    setState(() {
      value = changed;
    });
    widget.onValueChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 0.5.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: title,
              fontFamily: Fonts.medium,
              fontSize: 14.sp,
              textColor: Constants.darkText,
            ),
            Transform.scale(
                scale: 1.4,
                child: Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Color(0xffE5E7ED),
                    ),
                    child: Radio(
                      value: widget.value,
                      groupValue: widget.groupedValue,
                      onChanged: (value) {
                        setState(() {
                          groupedValue = value;
                          widget.onValueChanged(value);
                        });
                      },
                      activeColor: Constants.robbinsEggBlue,
                    ))),
          ],
        ));
  }
}
