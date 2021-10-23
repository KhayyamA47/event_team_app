import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const defaultValue = 56.0;

class Loader extends StatelessWidget {
  static OverlayEntry _currentLoader;
  Loader._(this._progressIndicator, this._themeData);
  final Widget _progressIndicator;
  final ThemeData _themeData;

  static OverlayState _overlayState;

  static void show(BuildContext context,
      {Widget progressIndicator,
        ThemeData themeData,
        Color overlayColor,
        double overlayFromTop,
        double overlayFromBottom,
        bool isAppbarOverlay = false,
        bool isBottomBarOverlay = true
      }) {
    _overlayState = Overlay.of(context);
    if (_currentLoader == null) {
      _currentLoader = new OverlayEntry(builder: (context) {
        return Stack(
          children: <Widget>[
            SafeArea(
              child: Container(
                color: overlayColor ?? Color(0x99ffffff),
                margin: EdgeInsets.only(
                    top:
                    !isAppbarOverlay ? overlayFromTop ?? defaultValue : 0.0,
                    bottom: isBottomBarOverlay
                        ? 0.0
                        : overlayFromBottom ?? defaultValue),
              ),
            ),
            Center(
                child: Loader._(
                  progressIndicator,
                  themeData,
                )),
          ],
        );
      });
      try {
        WidgetsBinding.instance?.addPostFrameCallback(
                (_) => _overlayState?.insertAll([_currentLoader]));
      } catch (e) {}
    }
  }

  static void hide() {
    if (_currentLoader != null) {
      try {
        _currentLoader?.remove();
      } catch (e) {
        print(e.toString());
      } finally {
        _currentLoader = null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Theme(
            data: _themeData ??
                Theme.of(context).copyWith(accentColor: Colors.blue),
            child: _progressIndicator ?? CircularProgressIndicator()));
  }
}