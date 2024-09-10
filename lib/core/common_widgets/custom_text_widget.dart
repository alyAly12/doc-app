import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors.dart';


class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {super.key,
        required this.title,
        this.fontSize = 22,
        this.maxLines,
        this.color,
        this.fontWeight, this.textAlign, this.textDecoration});
  final String title;
  final double fontSize;
  final int? maxLines;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
          decoration: textDecoration,
          decorationThickness: 2,
          decorationColor: AppColors.mainColor,
          color:color,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          overflow: TextOverflow.ellipsis),
    );
  }
}