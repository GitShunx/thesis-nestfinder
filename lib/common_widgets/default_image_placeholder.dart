import 'package:flutter/material.dart';

class DefaultImagePlaceholder extends StatelessWidget {
  const DefaultImagePlaceholder(
      {Key? key, 
        required this.color, 
        required this.child, 
        this.height, 
        this.width, 
        this.borderRadius = 12.0, 
        this.borderSideWidth = 1.0, 
        required this.borderColor, 
        required this.onPressed,
      }) : super(key: key);

  final Widget child;
  final Color color;
  final double? height;
  final double? width;
  final double borderRadius;
  final double borderSideWidth;
  final Color borderColor;
  final VoidCallback onPressed;

  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(borderRadius),
          topLeft: Radius.circular(borderRadius),
          bottomRight: Radius.circular(borderRadius),
          bottomLeft: Radius.circular(borderRadius),

        ),


      ),

    );
  }
}
