import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets_manager.dart';

class DoctorBlueBanner extends StatelessWidget {
  const DoctorBlueBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                image: DecorationImage(
                    image: AssetImage(AssetsManager.bannerBackground),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTextWidget(
                  title: AppStrings.bookAndSchedule,
                  color: Colors.white,
                  fontSize: 18,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.0),
                        ),
                      ),
                      onPressed: () {},
                      child:  CustomTextWidget(
                        title: AppStrings.findDoc,
                        color: AppColors.mainColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
          ),
          Positioned(
              top: 0,
              right: 16,
              child: Image.asset(AssetsManager.bannerDoctor, height: 200.h)),
        ],
      ),
    );
  }
}