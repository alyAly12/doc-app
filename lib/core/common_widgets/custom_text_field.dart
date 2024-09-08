import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.controller, required this.focusNode, required this.hintText, this.obsecureText, this.suffixIcon, this.textInputAction, required this.validator});
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final bool? obsecureText;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      cursorColor: AppColors.mainColor,
      controller: controller,
      focusNode: focusNode,
      textInputAction: textInputAction,
      keyboardType: TextInputType.multiline,
      decoration:  InputDecoration(
        fillColor: AppColors.backGroundColor,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
            color: AppColors.lightTitleColor,
            fontSize: 12
        ),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 7),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightTitleColor),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.mainColor),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: AppColors.deepRed)),
        errorStyle: const TextStyle(fontSize: 14, color: AppColors.deepRed),
        focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: AppColors.deepRed)),
        suffixIcon:suffixIcon ,
      ),
      obscureText: obsecureText ??false,
      style:const TextStyle(
          decoration: TextDecoration.none,
          decorationThickness: 0,
          color: AppColors.greyColor,
          fontSize: 15
      ),
      validator: (value){
        return validator(value);
      },
      // onFieldSubmitted: onFieldSubmitted,
      // onSaved: onSaved,
    );
  }
}
