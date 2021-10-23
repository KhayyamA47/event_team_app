import 'dart:convert';
import 'dart:developer';
import 'package:event_team_app/models/RegisterResponseObject.dart';
import 'package:event_team_app/models/VerifyResponseObject.dart';
import 'package:http/http.dart' as http;
import 'package:event_team_app/models/CommonResponseObject.dart';
import 'package:event_team_app/models/Error.dart';
import 'package:event_team_app/models/Intro.dart';
import 'package:event_team_app/models/RegisterObject.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/util/util.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

Future<Intro> getIntro(BuildContext context) async {
  String url = 'https://run.mocky.io/v3/b9c0fccc-fd88-4acc-bd13-48bc1d029fb5';
  log(url);
  var response = await get(Uri.parse(url), headers: {
    'Accept': 'application/json',
  });
  log(response.statusCode.toString());
  log(response.body.toString());
  switch (response.statusCode) {
    case 200:
      CommonResponseObject responseObject = CommonResponseObject.fromJson(json.decode(response.body));
      log(responseObject.code.toString());
      switch (responseObject.code) {
        case 200:
          Intro intro = Intro.fromJson(json.decode(utf8.decode(response.bodyBytes)));
          return intro;
          break;
        case 500:
          ErrorResponse errorResponse = ErrorResponse.fromJson(json.decode(response.body));
          toastMassage(errorResponse.message);
          return null;
          break;
        default:
          toastMassage(AppLocalizations.of(context).somethingWentWrong);
          return null;
      }
      break;
    default:
      toastMassage(AppLocalizations.of(context).somethingWentWrong);
      return null;
      break;
  }
}

Future<RegisterResponseObject> register(BuildContext context,RegisterObject registerObject) async {
  String url = Constants.baseUrl + '/login/register';
  log(url);
  var response = await http.post(Uri.parse(url), headers: {"Content-Type": "application/json"}, body: json.encode(registerObject));
  log(response.statusCode.toString());
  log(response.body.toString());

  switch (response.statusCode) {
    case 200:
      CommonResponseObject responseObject = CommonResponseObject.fromJson(json.decode(utf8.decode(response.bodyBytes)));
      switch (responseObject.code) {
        case 200:
          RegisterResponseObject registerResponseObject = RegisterResponseObject.fromJson(json.decode(utf8.decode(response.bodyBytes)));
          return registerResponseObject;
          break;
        default:
          toastMassage(AppLocalizations.of(context).somethingWentWrong);
          return null;
      }
      break;
    default:
      toastMassage(AppLocalizations.of(context).somethingWentWrong);
      return null;
      break;
  }
}

Future<VerifyResponseObject>confirm(BuildContext context,String key, String otp) async {
  String url = Constants.baseUrl + '/login/confirm/key/$key/otp/$otp';
  var response = await http.get(Uri.parse(url));
  log(response.statusCode.toString());
  log(response.body.toString());
  switch (response.statusCode) {
    case 200:
      CommonResponseObject responseObject = CommonResponseObject.fromJson(json.decode(utf8.decode(response.bodyBytes)));
      switch (responseObject.code) {
        case 200:
          VerifyResponseObject verifyResponseObject = VerifyResponseObject.fromJson(json.decode(utf8.decode(response.bodyBytes)));
          return verifyResponseObject;
          break;
        default:
          toastMassage(AppLocalizations.of(context).somethingWentWrong);
          return null;
      }
      break;
    default:
      toastMassage(AppLocalizations.of(context).somethingWentWrong);
      return null;
      break;
  }
}
// Future<VerifyResponseObject> signIn(BuildContext context) async {
//   String url = Constants.baseUrl + '/login/register';
//   log(url);
//   var response = await http.post(Uri.parse(url), headers: {"Content-Type": "application/json"}, body: json.encode(registerObject));
//   log(response.statusCode.toString());
//   log(response.body.toString());
//
//   switch (response.statusCode) {
//     case 200:
//       CommonResponseObject responseObject = CommonResponseObject.fromJson(json.decode(utf8.decode(response.bodyBytes)));
//       switch (responseObject.code) {
//         case 200:
//           RegisterResponseObject registerResponseObject = RegisterResponseObject.fromJson(json.decode(utf8.decode(response.bodyBytes)));
//           return registerResponseObject;
//           break;
//         default:
//           toastMassage(AppLocalizations.of(context).somethingWentWrong);
//           return null;
//       }
//       break;
//     default:
//       toastMassage(AppLocalizations.of(context).somethingWentWrong);
//       return null;
//       break;
//   }
// }