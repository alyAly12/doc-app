import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By logging in, you agree to our ',
        style: TextStyle(color: AppColors.lightTitleColor, fontSize: 12.sp),
        children: [
          TextSpan(
            text: 'Terms and Conditions',
            style: TextStyle(color: Colors.black, fontSize: 12.sp),
          ),
          TextSpan(
            text: ' and ',
            style: TextStyle(color: AppColors.lightTitleColor, fontSize: 12.sp),
          ),
          TextSpan(
            text: 'privacy policy',
            style: TextStyle(color: Colors.black, fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
