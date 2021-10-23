// import 'package:flutter/material.dart';
// import 'package:scc/constants/constants.dart';
// import 'package:scc/util/util.dart';
//
// class TextFieldWithPaddingWidget extends StatelessWidget {
//   final TextEditingController textEditingController;
//   final String hint, fontFamily;
//   final Color hintColor, textColor, fillColor;
//   final FontWeight fontWeight;
//   final double fontSize,
//       letterSpacing,
//       verticalContentPadding,
//       horizontalContentPadding;
//   final TextInputType textInputType;
//   final Widget suffix, prefix;
//   @required
//   final bool obscureText;
//   @required
//   final isEnabled;
//
//   const TextFieldWithPaddingWidget(
//       {Key key,
//         this.hint,
//         this.hintColor,
//         this.fontWeight,
//         this.fontSize,
//         this.letterSpacing,
//         this.textColor,
//         this.fillColor,
//         this.textInputType,
//         this.obscureText,
//         this.textEditingController,
//         this.isEnabled,
//         this.fontFamily,
//         this.suffix,
//         this.prefix,
//         this.verticalContentPadding=0,
//         this.horizontalContentPadding=0})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MediaQuery(
//         data: MediaQuery.of(context).copyWith(
//           textScaleFactor: 1.0,
//         ),
//
//         ///For disabling  size changing according user device font size
//         child: Container(
//           width: SizeConfig.screenWidth,
//           child: TextFormField(
//             readOnly: isEnabled ? false : true,
//             enabled: isEnabled,
//             controller: textEditingController,
//             obscureText: obscureText,
//             keyboardType: textInputType,
//             style: TextStyle(
//                 fontFamily: fontFamily,
//                 color: textColor,
//                 letterSpacing: letterSpacing,
//                 fontSize: fontSize,
//                 fontWeight: fontWeight),
//             decoration: InputDecoration(
//                 isDense: false,
//                 prefix: prefix,
//                 contentPadding: EdgeInsets.symmetric(
//                     vertical: verticalContentPadding,
//                     horizontal: horizontalContentPadding),
//                 suffixIcon: suffix,
//                 hintStyle: TextStyle(
//                     fontFamily: fontFamily,
//                     color: hintColor,
//                     letterSpacing: letterSpacing,
//                     fontSize: fontSize,
//                     fontWeight: fontWeight),
//                 hintText: hint,
//                 enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(SizeConfig.size12 * 0.5),
//                     ),
//                     borderSide: BorderSide(
//                         color: Constants.textFiledBorderColor, width: 2)),
//                 disabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(SizeConfig.size12 * 0.5),
//                     ),
//                     borderSide: BorderSide(
//                         color: Constants.textFiledBorderColor, width: 2)),
//                 focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(SizeConfig.size12 * 0.5),
//                     ),
//                     borderSide: BorderSide(
//                         color: Constants.textFiledBorderColor, width: 2)),
//                 fillColor: fillColor,
//                 filled: true),
//           ),
//         ));
//   }
// }
