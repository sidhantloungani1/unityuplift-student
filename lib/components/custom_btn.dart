import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final Color? color;
  final double? height;
  final double? width;
  final Function()? onPressed;
  final Color? textColor;
  const CustomBtn(
      {super.key,
      required this.text,
      this.color,
      required this.onPressed,
      this.height,
      this.width,
      this.textColor,
      });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      textColor: color?? AppColors.secondaryColor,
      color: color ?? AppColors.primaryColor,
      height: height ?? 55,
      minWidth: width ?? 250,
      child: Text(text, style: TextStyle(color: textColor,fontSize:18),),
    );
  }
}