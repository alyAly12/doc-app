import 'package:doc_app/core/common_widgets/custom_button.dart';
import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:doc_app/core/helper/extenstions.dart';
import 'package:doc_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';


class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.w, vertical: 0.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.h,),
         const CustomTextWidget(title: AppStrings.about,fontSize: 20,fontWeight: FontWeight.bold,),
          SizedBox(height: 15.h,),
          CustomTextWidget(title: 'Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.',
          fontSize: 15.sp,fontWeight: FontWeight.w400,
          maxLines: 10,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 15.h,),
          const CustomTextWidget(title: AppStrings.workingTime,fontSize: 20,fontWeight: FontWeight.bold,),
          SizedBox(height: 15.h,),
          CustomTextWidget(title: 'Monday - Friday: 9:00 - 19:00',fontSize: 15.sp,fontWeight: FontWeight.w400,),
          const Spacer(),
          CustomButton(
            buttonHeight: 50.h,
              radius: 8,
              onPressed: (){
              context.pushNamed(Routes.makeAppointmentScreen);
              },
              title: 'Book an Appointment',
              textSize: 20.sp,
              showIcon: false),
        ],
      ),
    );
  }
}
