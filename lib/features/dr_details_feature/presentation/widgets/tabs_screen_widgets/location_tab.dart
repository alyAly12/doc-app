import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:doc_app/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_strings.dart';


class LocationTab extends StatelessWidget {
  const LocationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 0.h),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.h,),
          const CustomTextWidget(title: AppStrings.practicePlace,fontSize: 20,fontWeight: FontWeight.bold,),
          SizedBox(height: 15.h,),
          CustomTextWidget(title: 'Cairo, Egypt',fontSize: 15.sp,fontWeight: FontWeight.w400,),
          SizedBox(height: 15.h,),
          CustomTextWidget(title: AppStrings.locationMap,fontSize: 20.sp,fontWeight: FontWeight.w400,),
          SizedBox(height: 15.h,),
          Image.asset(AssetsManager.mapShot,fit: BoxFit.cover,filterQuality: FilterQuality.high,)
        ],
      ),
    );
  }
}
