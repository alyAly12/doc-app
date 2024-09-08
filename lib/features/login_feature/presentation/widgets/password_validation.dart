import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasNumber,
      required this.hasSpecialChar,
      required this.hasMinLength});

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least one lowercase letter', hasLowerCase),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('At least one uppercase letter', hasUpperCase),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('At least one number ', hasNumber),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('At least one special character', hasSpecialChar),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('At least 8 characters', hasMinLength),
        SizedBox(
          height: 2.h,
        ),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColors.greyColor,
        ),
        SizedBox(
          width: 6.w,
        ),
        CustomTextWidget(
          title: text,
          color: hasValidated ? AppColors.lightTitleColor : AppColors.greyColor,
          fontSize: 13.sp,
          textDecoration: hasValidated ? TextDecoration.lineThrough : null,
        ),
      ],
    );
  }
}
