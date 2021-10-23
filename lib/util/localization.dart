import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'skip': 'Skip',
      'somethingWentWrong': 'Something went wrong',
      'signIn': 'Sign in',
      'dontHaveAccount': 'Don’t have an account?',
      'signUp': 'Sign up',
      'enterUsername': 'Enter username',
      'enterPassword': 'Enter password',
      'forgotPassword': 'Forgot password?',
      'orContinueWith': 'Or continue with',
      'byRegistering': 'By registering or login, you are agree with our',
      'terms': 'Terms',
      'and': 'and',
      'privacyPolicy': 'Privacy Policy',
      'forgotPasswordLabel': 'Forgot password',
      'forgotPasswordDescription':
          'Enter your email address, we will send you an email with password reset instructions.',
      'enterYour':
          'Enter your email address, we will send you an email with password reset instructions.',
      'enterYourEmail': 'Enter your email',
      'send': 'Send',
      'verifyLabel': 'Please, check your email inbox',
      'verifyDescription1': 'Click to the link we sent to',
      'verifyDescription2': 'to change password',
      'didntReceiveEmail': 'Didn’t receive any EMAIL?',
      'resendEmail': 'Resend email',
      'confirmNewPassword': 'Confirm new password',
      'createNewPasswordLabel': 'Create a new password',
      'createNewPasswordDescription':
          'Enter your new password. From now on you will be able to log in only with this password.',
      'save': 'Save',
      'createAccount': 'Create account',
      'alreadyHaveAccount': 'Already have an account?',
      'tapToChange': 'Tap to change the profile picture.',
      'usernameSendUpdates': 'Your username will be public and we’ll send updates to the email address you provide.',
      'camera': 'Camera',
      'gallery': 'Gallery',
      'removePhoto': 'Remove photo',
      'dateOfBirth': 'Date of birth',
      'gender': 'Gender',
      'notPublicProfile': 'This won’t be a part of your public profile. You need to enter the your gender',
      'preferNotToSay': 'Prefer not to say',
      'male': 'Male',
      'female': 'Female',
      'improve': 'Age and gender help improve recommendations but are not shown publicly.',
      'skipNow': 'Skip now',
      'hello': 'Hello,',
      'addSomeFriend': 'Add some friends to get you started.',
      'findYourFriends': 'Find your friends',
      'finish': 'Finish',
      'add': 'Add',
      'mutualFriends': '#count mutual friends',
      'home': 'Home',
      'findFriends': 'Find friends',
      'browseCategory': 'Browse category',
      'myEvents': 'My events',
      'recentlyViewed': 'Recently viewed',
      'categories': 'Categories',
      'browseAll': 'Browse all',
      'tips': 'Tips',
      'notNow': 'Not now',
      'enable': 'Enable',
      'recommended': 'Recommended for you',
      'popularEvents': 'Popular events',
      'friendsEvents': 'Friends events',
      'hosted': 'Hosted',
      'going': 'Going',
      'interested': 'Interested',
    },
    'ru': {
      'skip': '',
      'somethingWentWrong': '',
      'signIn': '',
      'dontHaveAccount': '',
      'signUp': '',
      'enterUsername': '',
      'enterPassword': '',
      'forgotPassword': '',
      'orContinueWith': '',
      'byRegistering': '',
      'terms': '',
      'and': '',
      'privacyPolicy': '',
      'forgotPasswordLabel': '',
      'forgotPasswordDescription': '',
      'enterYourEmail': '',
      'send': '',
      'verifyLabel': '',
      'verifyDescription1': 'Click to the link we sent to',
      'verifyDescription2': 'to change password',
      'didntReceiveEmail': '',
      'resendEmail': '',
      'confirmNewPassword': '',
      'createNewPasswordLabel': '',
      'createNewPasswordDescription': '',
      'save': '',
      'createAccount': '',
      'alreadyHaveAccount': '',
      'tapToChange': '',
      'usernameSendUpdates': '',
      'camera': '',
      'gallery': '',
      'removePhoto': '',
      'dateOfBirth': '',
      'gender': '',
      'notPublicProfile': '',
      'preferNotToSay': '',
      'male': '',
      'female': '',
      'improve': '',
      'skipNow': '',
      'hello': '',
      'addSomeFriend': '',
      'findYourFriends': '',
      'finish': '',
      'add': '',
      'mutualFriends': '',
      'home': '',
      'findFriends': '',
      'browseCategory': '',
      'myEvents': '',
      'recentlyViewed': '',
      'categories': '',
      'browseAll': '',
      'tips': '',
      'notNow': '',
      'enable': '',
      'recommended': '',
      'popularEvents': '',
      'friendsEvents': '',
      'hosted': '',
      'going': '',
      'interested': '',
    },
    'az': {
      'skip': '',
      'somethingWentWrong': '',
      'signIn': '',
      'dontHaveAccount': '',
      'signUp': '',
      'enterUsername': '',
      'enterPassword': '',
      'forgotPassword': '',
      'orContinueWith': '',
      'byRegistering': '',
      'terms': '',
      'and': '',
      'privacyPolicy': '',
      'forgotPasswordLabel': '',
      'forgotPasswordDescription': '',
      'enterYourEmail': '',
      'send': '',
      'verifyLabel': '',
      'verifyDescription1': 'Click to the link we sent to',
      'verifyDescription2': 'to change password',
      'didntReceiveEmail': '',
      'resendEmail': '',
      'confirmNewPassword': '',
      'createNewPasswordLabel': '',
      'createNewPasswordDescription': '',
      'save': '',
      'createAccount': '',
      'alreadyHaveAccount': '',
      'tapToChange': '',
      'usernameSendUpdates': '',
      'camera': '',
      'gallery': '',
      'removePhoto': '',
      'dateOfBirth': '',
      'gender': '',
      'notPublicProfile': '',
      'preferNotToSay': '',
      'male': '',
      'female': '',
      'improve': '',
      'skipNow': '',
      'hello': '',
      'addSomeFriend': '',
      'findYourFriends': '',
      'finish': '',
      'add': '',
      'mutualFriends': '',
      'home': '',
      'findFriends': '',
      'browseCategory': '',
      'myEvents': '',
      'recentlyViewed': '',
      'categories': '',
      'browseAll': '',
      'tips': '',
      'notNow': '',
      'enable': '',
      'recommended': '',
      'popularEvents': '',
      'friendsEvents': '',
      'hosted': '',
      'going': '',
      'interested': '',
    },
  };
  String get popularEvents {
    return _localizedValues[locale.languageCode]['popularEvents'];
  }
  String get friendsEvents {
    return _localizedValues[locale.languageCode]['friendsEvents'];
  }
  String get hosted {
    return _localizedValues[locale.languageCode]['hosted'];
  }
  String get going {
    return _localizedValues[locale.languageCode]['going'];
  }
  String get interested {
    return _localizedValues[locale.languageCode]['interested'];
  }
  String get recommended {
    return _localizedValues[locale.languageCode]['recommended'];
  }
  String get browseAll {
    return _localizedValues[locale.languageCode]['browseAll'];
  }
  String get tips {
    return _localizedValues[locale.languageCode]['tips'];
  }
  String get notNow {
    return _localizedValues[locale.languageCode]['notNow'];
  }
  String get enable {
    return _localizedValues[locale.languageCode]['enable'];
  }
  String get categories {
    return _localizedValues[locale.languageCode]['categories'];
  }
  String get findFriends {
    return _localizedValues[locale.languageCode]['findFriends'];
  }
  String get browseCategory {
    return _localizedValues[locale.languageCode]['browseCategory'];
  }
  String get myEvents {
    return _localizedValues[locale.languageCode]['myEvents'];
  }
  String get recentlyViewed {
    return _localizedValues[locale.languageCode]['recentlyViewed'];
  }
  String get home {
    return _localizedValues[locale.languageCode]['home'];
  }
  String get mutualFriends {
    return _localizedValues[locale.languageCode]['mutualFriends'];
  }
  String get add {
    return _localizedValues[locale.languageCode]['add'];
  }
  String get finish {
    return _localizedValues[locale.languageCode]['finish'];
  }
  String get findYourFriends {
    return _localizedValues[locale.languageCode]['findYourFriends'];
  }
  String get addSomeFriend {
    return _localizedValues[locale.languageCode]['addSomeFriend'];
  }
  String get hello {
    return _localizedValues[locale.languageCode]['hello'];
  }
  String get skipNow {
    return _localizedValues[locale.languageCode]['skipNow'];
  }
  String get improve {
    return _localizedValues[locale.languageCode]['improve'];
  }
  String get preferNotToSay {
    return _localizedValues[locale.languageCode]['preferNotToSay'];
  }
  String get male {
    return _localizedValues[locale.languageCode]['male'];
  }
  String get female {
    return _localizedValues[locale.languageCode]['female'];
  }
  String get notPublicProfile {
    return _localizedValues[locale.languageCode]['notPublicProfile'];
  }
  String get dateOfBirth {
    return _localizedValues[locale.languageCode]['dateOfBirth'];
  }
  String get gender {
    return _localizedValues[locale.languageCode]['gender'];
  }
  String get camera {
    return _localizedValues[locale.languageCode]['camera'];
  }
  String get gallery {
    return _localizedValues[locale.languageCode]['gallery'];
  }
  String get removePhoto {
    return _localizedValues[locale.languageCode]['removePhoto'];
  }
  String get usernameSendUpdates {
    return _localizedValues[locale.languageCode]['usernameSendUpdates'];
  }
  String get tapToChange {
    return _localizedValues[locale.languageCode]['tapToChange'];
  }
  String get alreadyHaveAccount {
    return _localizedValues[locale.languageCode]['alreadyHaveAccount'];
  }
  String get createAccount {
    return _localizedValues[locale.languageCode]['createAccount'];
  }
  String get confirmNewPassword {
    return _localizedValues[locale.languageCode]['confirmNewPassword'];
  }

  String get createNewPasswordLabel {
    return _localizedValues[locale.languageCode]['createNewPasswordLabel'];
  }

  String get createNewPasswordDescription {
    return _localizedValues[locale.languageCode]
        ['createNewPasswordDescription'];
  }

  String get save {
    return _localizedValues[locale.languageCode]['save'];
  }

  String get verifyDescription1 {
    return _localizedValues[locale.languageCode]['verifyDescription1'];
  }

  String get verifyDescription2 {
    return _localizedValues[locale.languageCode]['verifyDescription2'];
  }

  String get verifyLabel {
    return _localizedValues[locale.languageCode]['verifyLabel'];
  }

  String get didntReceiveEmail {
    return _localizedValues[locale.languageCode]['didntReceiveEmail'];
  }

  String get resendEmail {
    return _localizedValues[locale.languageCode]['resendEmail'];
  }

  String get send {
    return _localizedValues[locale.languageCode]['send'];
  }

  String get enterYourEmail {
    return _localizedValues[locale.languageCode]['enterYourEmail'];
  }

  String get forgotPasswordDescription {
    return _localizedValues[locale.languageCode]['forgotPasswordDescription'];
  }

  String get forgotPasswordLabel {
    return _localizedValues[locale.languageCode]['forgotPasswordLabel'];
  }

  String get byRegistering {
    return _localizedValues[locale.languageCode]['byRegistering'];
  }

  String get terms {
    return _localizedValues[locale.languageCode]['terms'];
  }

  String get and {
    return _localizedValues[locale.languageCode]['and'];
  }

  String get privacyPolicy {
    return _localizedValues[locale.languageCode]['privacyPolicy'];
  }

  String get orContinueWith {
    return _localizedValues[locale.languageCode]['orContinueWith'];
  }

  String get forgotPassword {
    return _localizedValues[locale.languageCode]['forgotPassword'];
  }

  String get enterPassword {
    return _localizedValues[locale.languageCode]['enterPassword'];
  }

  String get dontHaveAccount {
    return _localizedValues[locale.languageCode]['dontHaveAccount'];
  }

  String get signUp {
    return _localizedValues[locale.languageCode]['signUp'];
  }

  String get skip {
    return _localizedValues[locale.languageCode]['skip'];
  }

  String get signIn {
    return _localizedValues[locale.languageCode]['signIn'];
  }

  String get somethingWentWrong {
    return _localizedValues[locale.languageCode]['somethingWentWrong'];
  }

  String get enterUsername {
    return _localizedValues[locale.languageCode]['enterUsername'];
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'ru', 'az'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
