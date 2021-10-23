import 'dart:convert';
import 'dart:developer';
import 'dart:io' as Io;
import 'dart:io';
import 'package:event_team_app/pages/splash.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/widgets/overlay_loader.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

toastMassage(String message) {
  return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 18.0);
}

Future setShared(String key, String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  log('saved data key = $key and value = $value');
  prefs.setString(key, value);
}

Future<void> removeShared(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove(key);
}

Future<void> logout(BuildContext context,String key) async {
 await removeShared(key).then((value) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => SplashPage()),
            (Route<dynamic> route) => false);
  });
}
Future<bool> onWillPop(BuildContext context, PanelController panelController) async {
  if (panelController.isAttached && panelController.isPanelOpen) {
    panelController.close();
    return false;
  } else {
    Navigator.of(context).pop(true);
    return true;
  }
}
Future<String> getShared(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  log('get $key  ==> ${prefs.getString(key)}');
  return prefs.getString(key);
}

Text title(String text, Color color, double size, FontWeight fontWeight,
    double letterSpacing, TextAlign textAlign, double textScaleFactor) {
  return Text(text,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
          letterSpacing: letterSpacing),
      textAlign: textAlign,
      textScaleFactor: textScaleFactor);
}

loading(BuildContext context) {
  return Loader.show(context,
      isAppbarOverlay: true,
      isBottomBarOverlay: true,
      progressIndicator: CircularProgressIndicator(),
      themeData:
          Theme.of(context).copyWith(accentColor: Constants.robbinsEggBlue),
      overlayColor: Colors.black12);
}

String formatMMSS(int seconds) {
  int hours = (seconds / 3600).truncate();
  seconds = (seconds % 3600).truncate();
  int minutes = (seconds / 60).truncate();
  String hoursStr = (hours).toString().padLeft(2, '0');
  String minutesStr = (minutes).toString().padLeft(2, '0');
  String secondsStr = (seconds % 60).toString().padLeft(2, '0');
  if (hours == 0) {
    return "$minutesStr:$secondsStr";
  }
  return "$hoursStr:$minutesStr:$secondsStr";
}

Future getImage(ImageSource imageSource, [int imageQuality]) async {
  final picker = ImagePicker();
  final pickedFile = await picker.getImage(
      source: imageSource,
      imageQuality: imageQuality == null ? 100 : imageQuality);
  if (pickedFile != null) {
    File image = File(pickedFile.path);
    log("image => $image");
    if (image != null) {
      return image;
    } else {
      return null;
    }
  } else {
    print('No image selected.');
    return null;
  }
}

Future<String> convertFileToBase64(File image) async {
  String encodedImage = '';
  List<int> imageBytes = await image.readAsBytes();
  encodedImage = base64Encode(imageBytes);
  return encodedImage;
}
