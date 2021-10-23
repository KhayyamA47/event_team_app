import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:event_team_app/models/RegisterObject.dart';
import 'package:event_team_app/pages/create_account/components/avatar.dart';
import 'package:event_team_app/pages/create_account/components/gender_options.dart';
import 'package:event_team_app/pages/create_account/components/header.dart';
import 'package:event_team_app/pages/create_account/components/image_options.dart';
import 'package:event_team_app/pages/create_account/components/image_selecting_options.dart';
import 'package:event_team_app/pages/create_account/components/inputs.dart';
import 'package:event_team_app/pages/create_account/components/multiple_selections.dart';
import 'package:event_team_app/pages/verify/verify.dart';
import 'package:event_team_app/services.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/util/util.dart';
import 'package:event_team_app/widgets/backButton.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:event_team_app/widgets/commonButton.dart';
import 'package:event_team_app/widgets/itemWithCheckbox.dart';
import 'package:event_team_app/widgets/overlay_loader.dart';
import 'package:event_team_app/widgets/separator_line.dart';
import 'package:event_team_app/widgets/slidingUpPanel.dart';
import 'package:event_team_app/widgets/src/date_picker.dart';
import 'package:event_team_app/widgets/src/date_picker_theme.dart';
import 'package:event_team_app/widgets/src/i18n/date_picker_i18n.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:contacts_service/contacts_service.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  PanelController imageSelectingPanelController = PanelController();
  PanelController datePickerPanelController = PanelController();
  PanelController genderPanelController = PanelController();
  File image;
  int val = -1;
  Map<int, String> map = {};
  List<Contact> _contacts;
  List<String> phones = [];

  @override
  void initState() {
    super.initState();
  }

  Future<void> refreshContacts() async {
    var contacts = (await ContactsService.getContacts(
            withThumbnails: false, iOSLocalizedLabels: false))
        .toList();
    contacts.removeWhere((element) {
      return element.phones.isEmpty;
    });
    setState(() {
      _contacts = contacts;
      for (int i = 0; i < _contacts.length; i++) {
        phones.add(_contacts[i].phones.first.value);
      }
      log(phones.toString());
    });
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgWhite,
      resizeToAvoidBottomInset: false,
      body: body(),
    );
  }

  Widget selectingImagePanelItems() {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(5.w),
      children: [
        ImageOptions(
            path: 'assets/icons/gallery.png',
            title: AppLocalizations.of(context).gallery,
            function: () {
              getImage(ImageSource.gallery).then((value) {
                imageSelectingPanelController.close();
                if (value != null) {
                  setState(() {
                    image = value;
                  });
                }
              });
            }),
        ImageOptions(
            path: 'assets/icons/camera.png',
            title: AppLocalizations.of(context).camera,
            function: () {
              getImage(ImageSource.camera).then((value) {
                imageSelectingPanelController.close();
                if (value != null) {
                  setState(() {
                    image = value;
                  });
                }
              });
            }),
        ImageOptions(
            path: 'assets/icons/remove_photo.png',
            title: AppLocalizations.of(context).removePhoto,
            function: () {
              imageSelectingPanelController.close();
              image = null;
            }),
      ],
    );
  }

  Widget body() {
    map = {
      1: AppLocalizations.of(context).preferNotToSay,
      2: AppLocalizations.of(context).male,
      3: AppLocalizations.of(context).female,
    };
    return Stack(
      children: [
        Container(
            height: 100.h,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w) +
                            EdgeInsets.only(top: 8.h, bottom: 2.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BackButtonWidget(onPressed: null),
                            SizedBox(height: 1.5.h),
                            Header(),
                            SizedBox(height: 3.h),
                            Avatar(
                                panelController: imageSelectingPanelController,
                                image: image),
                            SizedBox(height: 2.h),
                            Inputs(
                                usernameController: usernameController,
                                emailController: emailController,
                                passwordController: passwordController),
                            SizedBox(height: 2.h),
                            TextWidget(
                              text: AppLocalizations.of(context)
                                  .usernameSendUpdates,
                              underline: false,
                              fontSize: 10.sp,
                              fontFamily: Fonts.regular,
                              maxLines: 2,
                              textColor: Constants.mediumText,
                            ),
                            SizedBox(height: 1.h),
                          ],
                        ),
                      ),
                      Container(height: 2.h, color: Color(0xffF0F1F4)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w) +
                            EdgeInsets.only(bottom: 2.h, top: 2.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            MultipleSelections(
                              function: null,
                              title: AppLocalizations.of(context).dateOfBirth,
                              value: '',
                            ),
                            SizedBox(height: 1.h),
                            MultipleSelections(
                              function: () {
                                genderPanelController.open();
                              },
                              title: AppLocalizations.of(context).gender,
                              value:
                                  val > 0 ? map.values.elementAt(val - 1) : '',
                            ),
                            SizedBox(height: 2.h),
                            TextWidget(
                              text: AppLocalizations.of(context).improve,
                              underline: false,
                              fontSize: 10.sp,
                              fontFamily: Fonts.regular,
                              maxLines: 2,
                              textColor: Constants.mediumText,
                            ),
                            SizedBox(height: 9.h),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Constants.bgWhite,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w) +
                  EdgeInsets.only(bottom: 2.h, top: 2.h),
              child: Button(
                  function: () async {

                    RegisterObject r=RegisterObject(
                      birthday: '2021-10-20',
                      email: emailController.text,
                      gender:map[val].toUpperCase(),
                      login: usernameController.text,
                      password: passwordController.text
                    );

                    loading(context);
                    await register(context,r).then((value) async {
                      Loader.hide();
                      if(value!=null){
                       await setShared(Constants.key, value.body).then((value) {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => VerifyPage(registerObject: r)));

                       });
                      }
                    });

                  },
                  text: AppLocalizations.of(context).signUp),
            ),
          ),
          // ),
        ),
        SlidingPanel(
          isDraggable: false,
          minHeight: 0,
          maxHeight: 17.h,
          widget: ImageSelectingOptions(
            panelController: imageSelectingPanelController,
            valueChanged: (var value) {
              setState(() {
                image = value;
              });
              log('my image : $image');
            },
          ),
          panelController: imageSelectingPanelController,
        ),
        SlidingPanel(
          isDraggable: false,
          minHeight: 0,
          maxHeight: 22.h,
          widget: SizedBox(),
          panelController: datePickerPanelController,
        ),
        SlidingPanel(
          isDraggable: false,
          minHeight: 0,
          maxHeight: 44.h,
          widget: GenderOptions(
            map: map,
            panelController: genderPanelController,
            valueChanged: (int value) {
              setState(() {
                val = value;
                log('my val : $val');
              });
            },
          ),
          panelController: genderPanelController,
        ),
      ],
    );
  }
}

class DatePickerBottomSheet extends StatefulWidget {
  DatePickerBottomSheet({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DatePickerBottomSheetState();
}

const String MIN_DATETIME = '2010-05-12';
const String MAX_DATETIME = '2021-11-25';
const String INIT_DATETIME = '2019-05-17';

class _DatePickerBottomSheetState extends State<DatePickerBottomSheet> {
  bool _showTitle = true;

  DateTimePickerLocale _locale = DateTimePickerLocale.en_us;
  List<DateTimePickerLocale> _locales = DateTimePickerLocale.values;

  String _format = 'yyyy-MMMM-dd';
  TextEditingController _formatCtrl = TextEditingController();

  DateTime _dateTime;

  @override
  void initState() {
    super.initState();
    _formatCtrl.text = _format;
    _dateTime = DateTime.parse(INIT_DATETIME);
  }

  @override
  Widget build(BuildContext context) {
    // create locale radio list
    List<Widget> radios = List<Widget>();
    _locales.forEach((locale) {
      radios.add(Container(
        margin: EdgeInsets.only(right: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Radio(
              value: locale,
              groupValue: _locale,
              onChanged: (value) {
                setState(() {
                  _locale = value;
                });
              },
            ),
            Text(locale
                .toString()
                .substring(locale.toString().indexOf('.') + 1)),
          ],
        ),
      ));
    });

    TextStyle hintTextStyle =
        Theme.of(context).textTheme.subhead.apply(color: Color(0xFF999999));
    return Scaffold(
      appBar: AppBar(title: Text('DatePicker Bottom Sheet')),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // min datetime hint
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 115.0,
                    child: Text('min DateTime:', style: hintTextStyle),
                  ),
                  Text(MIN_DATETIME,
                      style: Theme.of(context).textTheme.subhead),
                ],
              ),
            ),

            // max datetime hint
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                      width: 115.0,
                      child: Text('max DateTime:', style: hintTextStyle)),
                  Text(MAX_DATETIME,
                      style: Theme.of(context).textTheme.subhead),
                ],
              ),
            ),

            // init datetime hint
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                      width: 115.0,
                      child: Text('init DateTime:', style: hintTextStyle)),
                  Text(INIT_DATETIME,
                      style: Theme.of(context).textTheme.subhead),
                ],
              ),
            ),

            // show title widget checkbox
            Row(
              children: <Widget>[
                Text('show title'),
                Checkbox(
                  value: _showTitle,
                  onChanged: (value) {
                    setState(() {
                      _showTitle = value;
                    });
                  },
                )
              ],
            ),

            // date format input field
            TextField(
              controller: _formatCtrl,
              keyboardType: TextInputType.url,
              decoration: InputDecoration(
                labelText: 'Date Format',
                hintText: 'yyyy-MM-dd',
                hintStyle: TextStyle(color: Colors.black26),
              ),
              onChanged: (value) {
                _format = value;
              },
            ),

            // locale check radio group
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Locale: '),
                  Wrap(direction: Axis.horizontal, children: radios)
                ],
              ),
            ),

            // selected date
            Container(
              margin: EdgeInsets.only(top: 40.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Selected Date:',
                      style: Theme.of(context).textTheme.subhead),
                  Container(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text(
                      '${_dateTime.year}-${_dateTime.month.toString().padLeft(2, '0')}-${_dateTime.day.toString().padLeft(2, '0')}',
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // display DatePicker floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: _showDatePicker,
        tooltip: 'Show DatePicker',
        child: Icon(Icons.date_range),
      ),
    );
  }

  /// Display date picker.
  void _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: _showTitle,
        confirm: Text('custom Done', style: TextStyle(color: Colors.red)),
      ),
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: _dateTime,
      dateFormat: _format,
      locale: _locale,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }
}
