import 'dart:async';
import 'dart:developer';
import 'package:event_team_app/pages/add_friend/add_friend.dart';
import 'package:event_team_app/pages/create_account/create_account.dart';
import 'package:event_team_app/pages/create_new_password/create_new_password.dart';
import 'package:event_team_app/pages/forgot_password/forgot_password.dart';
import 'package:event_team_app/pages/intro/intro.dart';
import 'package:event_team_app/pages/login/login.dart';
import 'package:event_team_app/pages/main/home/home.dart';
import 'package:event_team_app/pages/main/main.dart';
import 'package:event_team_app/pages/verify/verify.dart';
import 'package:event_team_app/util/constants.dart';
import 'package:event_team_app/util/localization.dart';
import 'package:event_team_app/widgets/circleLogo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SplashPage());
}

class SplashPage extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setState(() {
      state.locale = newLocale;
    });
  }

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<SplashPage> {
  Locale locale;
  bool localeLoaded = false;

  @override
  void initState() {
    super.initState();
    this._fetchLocale().then((locale) {
      setState(() {
        this.localeLoaded = true;
        this.locale = locale;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (this.localeLoaded == false) {
      return CircularProgressIndicator();
    } else {
      return Sizer(builder: (context, orientation, deviceType) {

        return MaterialApp(
          title: 'EVENT APP',
          debugShowCheckedModeBanner: false,
          theme: new ThemeData(primarySwatch: Colors.blue),
          home: new Splash(),
          localizationsDelegates: [
            AppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate
          ],
          initialRoute: '/',

          supportedLocales: [
            const Locale('en', ''), // English
            const Locale('ru', ''), // Russian
            const Locale('az', ''), // Azerbaijan
          ],
          locale: locale,
          // routes: <String, WidgetBuilder>{}
        );
      });
    }
  }

  _fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.getString('languageCode') == null) {

      return null;
    }
    return Locale(
        prefs.getString('languageCode'), prefs.getString('countryCode'));
  }
}

class Splash extends StatefulWidget {
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  List<String> list = ['English', 'Rus', 'Azerbaijan'];

  int _index = 0;

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.delayed(const Duration(milliseconds: 200), () {


        setState(() {
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => HomePage1()), (Route<dynamic> route) => false);

        });

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Constants.bgDark,
      body: Center(
        child: CustomImageWidget(
          source: 5,
          boxFit: BoxFit.fitWidth,
          path: 'assets/images/svg_logo.svg',
          boxShape: BoxShape.rectangle,
          height: 20.h,
          width: 80.w,
        ),
      ),
    ));
  }

  Future<String> _getLanguageCode() async {
    var prefs = await SharedPreferences.getInstance();
    // if (prefs.getString('languageCode') == null) {
    _updateLocale('az', '');
    // }
    return prefs.getString('languageCode');
  }

  void _initLanguage() async {
    Future<String> status = _getLanguageCode();
    status.then((result) {
      if (result != null && result.compareTo('en') == 0) {
        setState(() {
          _index = 0;
        });
      }
      if (result != null && result.compareTo('ru') == 0) {
        setState(() {
          _index = 1;
        });
      }
      if (result != null && result.compareTo('az') == 0) {
        setState(() {
          _index = 2;
        });
      }
      print("INDEX: $_index");

      // _setupLangList();
    });
  }

  // void _setupLangList() {
  //   setState(() {
  //     _langList.add(new RadioModel(_index == 0 ? true : false, 'English'));
  //     _langList.add(new RadioModel(_index == 0 ? false : true, 'Russian'));
  //     _langList.add(new RadioModel(_index == 0 ? false : true, 'Azerbaijan'));
  //   });
  // }

  void _updateLocale(String lang, String country) async {
    print(lang + ':' + country);

    var prefs = await SharedPreferences.getInstance();
    prefs.setString('languageCode', lang);
    prefs.setString('countryCode', country);

    SplashPage.setLocale(context, Locale(lang, country));
  }
}
