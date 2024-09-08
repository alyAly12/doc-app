import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common_widgets/custom_button.dart';
import 'doc_and_text_widget.dart';
import 'logo_widget.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LogoWidget(),
            SizedBox(
              height: 20.h,
            ),
            const DocAndTextWidget(),
            SizedBox(
              height: 45.h,
            ),
            CustomButton(
                onPressed: () {
                  // context.pushReplacementNamed(Routes.loginScreen);
                },
                title: 'Get Started',
                textSize: 20.sp,
                textWeight: FontWeight.bold,
                buttonHeight: 50,
                showIcon: false)
          ],
        ),
      ),
    );
  }
}
