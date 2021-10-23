import 'dart:io';

import 'package:event_team_app/pages/create_account/components/image_options.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/util/util.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ImageSelectingOptions extends StatefulWidget {
  final PanelController panelController;
  final ValueChanged<File> valueChanged;

  const ImageSelectingOptions({Key key, this.panelController, this.valueChanged}) : super(key: key);

  @override
  _ImageSelectingOptionsState createState() => _ImageSelectingOptionsState(panelController,valueChanged);
}

class _ImageSelectingOptionsState extends State<ImageSelectingOptions> {
  PanelController panelController;
  ValueChanged<File> valueChanged;

  _ImageSelectingOptionsState(this.panelController,this.valueChanged);
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(5.w),
      children: [
        ImageOptions(
            path: 'assets/icons/gallery.png',
            title: AppLocalizations.of(context).gallery,
            function: () {
              getImage(ImageSource.gallery).then((value) {
                panelController.close();
                if (value != null) {
                  setState(() {
                    widget.valueChanged(value);
                    // image = value;
                  });
                }
              });
            }),
        ImageOptions(
            path: 'assets/icons/camera.png',
            title: AppLocalizations.of(context).camera,
            function: () {
              getImage(ImageSource.camera).then((value) {
                panelController.close();
                if (value != null) {
                  setState(() {
                    widget.valueChanged(value);

                    // image = value;
                  });
                }
              });
            }),
        ImageOptions(
            path: 'assets/icons/remove_photo.png',
            title: AppLocalizations.of(context).removePhoto,
            function: () {
              panelController.close();
              widget.valueChanged(null);

              // image = null;
            }),
      ],
    );
  }
}
