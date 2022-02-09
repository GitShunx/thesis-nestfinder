import 'package:flutter/material.dart';
import 'package:thesis_nestfinder/common_widgets/custom_elevated_button.dart';

class CreatePostButton  extends CustomElevatedButton {
  CreatePostButton({Key? key,
    required child,
    required double width,
    required double height,
    required double fontSize,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
    required Color borderColor,

  }) : super (key: key,
    child: Text(
      text,
      style: TextStyle(color: textColor, fontSize: fontSize)
    ),
    borderColor: borderColor,
    color: color,
    onPressed: onPressed,
    height: height,
    width: width,


  );
}