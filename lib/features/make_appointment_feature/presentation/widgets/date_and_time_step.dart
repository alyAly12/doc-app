import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_strings.dart';
import 'custom_date_widget.dart';
import 'custom_radio_list.dart';

class DateAndTimeStep extends StatelessWidget {
  const DateAndTimeStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextWidget(
          title: AppStrings.selectDate,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 50.h),
        const WeeklySelectedDate(),
        SizedBox(height: 100.h),
        const CustomTextWidget(
          title: AppStrings.appointmentType,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 20.h),
        const CustomRadioList(),
        SizedBox(height: 100.h),
      ],
    );
  }
}