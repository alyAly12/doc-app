import 'package:doc_app/core/helper/extenstions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_colors.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Have an account yet? ',
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 15.sp,
                ),
              ),
              TextSpan(
                text: 'Login',
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
