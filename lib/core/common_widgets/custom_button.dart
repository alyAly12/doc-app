import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import 'custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.color,
    required this.title,
    required this.showIcon,
    this.buttonHeight,
    this.textSize = 16,
    this.textColor = Colors.white,
    this.textWeight, this.left, this.right, this.radius,
  });

  final void Function() onPressed;
  final Color? color;
  final String title;
  final bool showIcon;
  final double? buttonHeight;
  final double? textSize;
  final Color? textColor;
  final FontWeight? textWeight;
  final double?left;
  final double?right;
  final double?radius;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.only(left:left?? 25, right:right?? 25),
      child: SizedBox(
        width: size.width,
        height: buttonHeight,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: color??AppColors.mainColor ,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius??20)),
            ),
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  title: title,
                  fontSize: textSize ?? 16,
                  fontWeight: textWeight ?? FontWeight.w300,
                  color: textColor,
                ),
                Visibility(
                    visible: showIcon,
                    child: const Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.white,
                      size: 20,
                    ))
              ],
            )),
      ),
    );
  }
}