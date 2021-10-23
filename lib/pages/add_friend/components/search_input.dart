import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchInput extends StatefulWidget {
  final TextEditingController searchController;
  final ValueChanged<String> valueChanged;

  const SearchInput({Key key, this.searchController, this.valueChanged})
      : super(key: key);

  @override
  _SearchInputState createState() => _SearchInputState(searchController,valueChanged);
}

class _SearchInputState extends State<SearchInput> {
  TextEditingController searchController;
  ValueChanged<String> valueChanged;

  _SearchInputState(this.searchController, this.valueChanged);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Theme(
            data: ThemeData(
              primaryColor: Constants.robbinsEggBlue,
            ),
            child: MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.0,
              ),

              ///For disabling  size changing according user device font size
              child: Container(
                width: 100.w,
                decoration: BoxDecoration(
                  color: Constants.darkText.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(1.h),
                ),
                child: TextFormField(
                    controller: widget.searchController,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    onChanged: (String value) {
                      widget.valueChanged(value);
                    },
                    maxLines: 1,
                    style: TextStyle(
                        fontFamily: Fonts.regular,
                        color: Constants.mediumText,
                        fontSize: 12.sp),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.only(top:0.1.h,left: 0.4.h),
                      isDense: false,
                      fillColor: Constants.darkText.withOpacity(0.05),
                      filled: false,
                      prefixIcon: Icon(Icons.search),
                      hintText: AppLocalizations
                          .of(context)
                          .findYourFriends,
                      hintStyle: TextStyle(
                          fontFamily: Fonts.regular,
                          color: Constants.darkText.withOpacity(0.2),
                          fontSize: 12.sp),
                      border: InputBorder.none,

                    )),
              ),
            )),
      ],
    );
  }
}

