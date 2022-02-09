import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.child,
    required this.color,
    this.borderRadius = 12.0,
    required this.onPressed,
    this.borderSideWidth = 1.0,
    this.height,
    this.width,
    required this.borderColor,
  }) : super(key: key);
  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  //--------
  final double borderSideWidth;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          side: BorderSide(
            width: borderSideWidth,
            color: borderColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: child,
        onPressed: onPressed,
      ),
    );
  }
}
