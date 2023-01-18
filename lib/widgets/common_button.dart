import 'package:erpl_learnpress/resource/app_theme.dart';
import 'package:flutter/material.dart';

import 'dimentions.dart';

class CommonButton extends StatelessWidget {
  String buttonText;
  VoidCallback function;
  final bool? expended;
  Color? BgColor;
  double buttonWidth; // add this
  double buttonHeight; // add this
  CommonButton(
      this.buttonText, this.function, this.buttonWidth, this.buttonHeight,
      {super.key, this.expended = false}); // change this

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: expended! ? AppTheme.primaryColor : Colors.black),
      child: MaterialButton(
        minWidth: buttonWidth * .3,
        color: BgColor,
        height: buttonHeight,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: function, // add this here
        child: Text(buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: AddSize.font18)
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
