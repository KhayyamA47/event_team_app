import 'dart:io';

import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:event_team_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Avatar extends StatefulWidget {
  final PanelController panelController;
  final File image;

  const Avatar({Key key, this.panelController, this.image}) : super(key: key);

  @override
  _AvatarState createState() => _AvatarState(panelController,image);
}

class _AvatarState extends State<Avatar> {
  PanelController panelController = PanelController();
  File image;

  _AvatarState(this.panelController,this.image);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(0.5.h),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFF9821).withOpacity(0.1)),
                    child: widget.image != null
                        ? Container(
                            width: 10.h,
                            height: 10.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: FileImage(widget.image))),
                          )
                        : Container(
                            alignment: Alignment.center,
                            width: 10.h,
                            height: 10.h,
                            child: TextWidget(
                              text: 'K',
                              underline: false,
                              fontSize: 20.sp,
                              fontFamily: Fonts.medium,
                              maxLines: 2,
                              textColor: Color(0xffA87335),
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFF9821).withOpacity(0.2),
                            ),
                          ),
                  ),
                  Positioned(
                      right: 0,
                      bottom: 0,
                      child: GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(0.4.h),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Container(
                            width: 7.w,
                            height: 7.w,
                            child: Center(
                              child: CustomImageWidget(
                                source: 5,
                                boxFit: BoxFit.contain,
                                path: 'assets/icons/camera.svg',
                                boxShape: BoxShape.rectangle,
                                height: 2.h,
                                width: 4.w,
                              ),
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Constants.robbinsEggBlue),
                          ),
                        ),
                        onTap: () {
                          if (panelController.isPanelOpen) {
                            panelController.close();
                          } else {
                            panelController.open();
                          }
                        },
                      ))
                ],
              ),
            ],
          ),
        ),
     Expanded(child:    TextWidget(
       text: AppLocalizations.of(context).tapToChange,
       underline: false,
       fontSize: 10.sp,
       fontFamily: Fonts.regular,
       maxLines: 2,
       textColor: Constants.mediumText,
     ))
      ],
    );
  }
}
