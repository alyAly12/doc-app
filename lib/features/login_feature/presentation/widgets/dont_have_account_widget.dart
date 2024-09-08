import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.pushNamed(Routes.signupScreen);
      },
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Don\'t have an account yet? ',
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 15.sp,
                ),
              ),
              TextSpan(
                text: 'Sign up',
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 15.sp,
                ),
              ),
            ],
          )),
    );
  }
}
