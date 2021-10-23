// import 'dart:developer';
//
// import 'package:event_team_app/widgets/circleLogo.dart';
// import 'package:flutter/material.dart';
// import 'package:scc/util/util.dart';
// import 'package:scc/widgets/circleLogo.dart';
//
// class PasswordVisibility extends StatefulWidget {
//   final bool obscure;
//   final ValueChanged<bool> onValueChanged;
//
//   const PasswordVisibility({Key key, this.obscure, this.onValueChanged}) : super(key: key);
//
//   @override
//   _PasswordVisibilityState createState() => _PasswordVisibilityState(obscure, onValueChanged);
// }
//
// class _PasswordVisibilityState extends State<PasswordVisibility> {
//   bool obscure;
//   ValueChanged<bool> onValueChanged;
//
//   _PasswordVisibilityState(this.obscure, this.onValueChanged);
//
//   changed(bool changed) {
//     setState(() {
//       obscure = changed;
//     });
//     widget.onValueChanged(obscure);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomImageWidget(
//       function: (){
//         setState(() {
//           obscure=!obscure;
//           changed(obscure);
//         });
//       },
//       source: 1,
//       path: 'assets/images/visibility_${obscure ? 'off' : 'on'}.png',
//       width: SizeConfig.size20,
//       height: SizeConfig.size20,
//       boxShape: BoxShape.rectangle,
//     );
//   }
// }
