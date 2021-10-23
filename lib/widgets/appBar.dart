// import 'package:flutter/material.dart';
//
// import 'package:event_team_app/widgets/test/util.dart';
//
//
// class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
//   final String title,fontFamily;
//   final List<Widget> actions;
//   final Widget leading;
//   final Color backgroundColor,titleColor;
//
//   const AppBarWidget({
//     Key key,
//     @required this.title,
//     this.actions,
//     this.leading,
//     this.backgroundColor, this.titleColor, this.fontFamily,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return AppBar(
//       automaticallyImplyLeading: false,
//       backgroundColor: backgroundColor,
//       elevation: 0,
//       leading: leading,
//       actions: actions,
//       centerTitle: false,
//       title: Text(title,
//           maxLines: 2,
//           style: TextStyle(
//             fontFamily: fontFamily,
//               color: titleColor,
//               fontSize: 16.sp)),
//     );
//
//   }
//
//   final Size preferredSize = const Size.fromHeight(kToolbarHeight + 5);
// }
