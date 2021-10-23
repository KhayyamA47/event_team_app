import 'package:flutter/material.dart';

class ButtonIconWidget extends StatelessWidget {
  final IconData icon;

  final Function function;
  final Color buttonColor, iconColor;
  final double radius, buttonHeight, textSize;

  const ButtonIconWidget({Key key, this.icon, this.function, this.buttonColor, this.iconColor, this.radius, this.buttonHeight, this.textSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: buttonHeight,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: buttonColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
          ),
          onPressed: () {
            function();
          },
          child: Icon(
            icon,
            color: iconColor,
          ),
        ));
  }
}
