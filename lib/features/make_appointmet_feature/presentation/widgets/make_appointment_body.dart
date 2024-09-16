import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:doc_app/core/utils/app_strings.dart';
import 'package:doc_app/features/make_appointmet_feature/presentation/widgets/custom_date_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MakeAppointmentBody extends StatelessWidget {
  const MakeAppointmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextWidget(title: AppStrings.selectDate,fontWeight: FontWeight.w500,),
          SizedBox(height: 50.h),
          const CustomDateWidget(),

        ],
      ),
    );
  }
}
