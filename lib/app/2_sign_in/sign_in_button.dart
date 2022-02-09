import 'package:flutter/material.dart';
import 'package:thesis_nestfinder/common_widgets/custom_elevated_button.dart';


class SignInButton extends CustomElevatedButton {
  SignInButton({Key? key,
    required double height,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
    required Color borderColor,
  }) : super(key: key,
    child: Text(
      text,
      style: TextStyle(color: textColor, fontSize: 15.0),
    ),
    borderColor: borderColor,
    color: color,
    onPressed: onPressed,
    height: height,

  );
}